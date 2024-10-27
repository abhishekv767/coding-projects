`timescale 1ns / 1ps

module TopLevel(
    input clkin,
    input btnR,
    input btnC,
    input [15:0]sw,
    output [15:0]led,
    output [3:0] an,
    output [6:0]seg,
    output dp
    );
//    assign led = sw;
    wire clk, digsel, qsec; //used
    wire BTNC; //used
    wire [7:0]signChangerOut; //used
    wire [15:0]decoderOut; //used
    wire [3:0]ringCounterOut; //used
    wire twosecs,foursecs; //used
    wire [7:0]rngOut; //used
    wire resetTimer; //used
    wire incrementScore, decrementScore; //used
    wire gameWon, gameLost;
    wire loadTarget;
    wire [3:0]targetRand; //used
    wire match; //used
    wire scoreFlasher, ledFlasher; //used
    wire [3:0]selectorToHex7Seg;
    wire [15:0]selectorInput;
    wire [3:0]scoreOut;
    
    //Timecounter wire
    wire [7:0]timeCount;

    //Provided to us (working)
    qsec_clks slowit (.clkin(clkin), .greset(btnR), .clk(clk), .digsel(digsel), .qsec(qsec));

    //Time Counter (working)
    Time_Counter timeCounter(.clk(clk), .CE(qsec), .R(resetTimer), .Q(timeCount));
    assign twosecs = timeCount[3] & timeCount[2] & ~timeCount[1] & ~timeCount[0];
    assign foursecs = timeCount[4] & ~timeCount[3] & ~timeCount[2] & ~timeCount[1] & ~timeCount[0];
//    assign led[0] = twosecs;
           
    //Button Synchronizers (working)
//    FDRE #(.INIT()) sync1 (.C(clk), .CE(1'b1), .D(btnU), .Q(BTNU));
    FDRE #(.INIT()) sync2 (.C(clk), .CE(1'b1), .D(btnC), .Q(BTNC));   
    
    //Random number generator (working)
    LSFR randomNumGen(.clk(clk), .CE(1'b1), .out(rngOut));
    
    //Target (working)
    Target targetMod(.clk(clk), .CE(loadTarget), .D(rngOut[5:2]), .Q(targetRand));
    
    //Decoder (working)
    Decoder decode(.N(targetRand), .Q(decoderOut));
      
    //scoring logic
    assign match = &(~(decoderOut ^ sw)); //(working)
    assign gameWon = ~scoreOut[3] & scoreOut[2] & ~scoreOut[1] & ~scoreOut[0]; //score of 4
    assign gameLost = scoreOut[3] & scoreOut[2] & ~scoreOut[1] & ~scoreOut[0]; //score of 4 
    
    
    //Score Counter(NOT DONE)
    countUD4L scoreCounter(.clk(clk), .Up(incrementScore), .Dw(decrementScore), 
                            .LD(1'b0), .Din(4'b0000), .Q(scoreOut));   
//    Score_Counter score(.clk(clk), .Up(match), .Dw(decrementScore), 
//                            .LD(1'b0), .Din(16'b0000000000000000), .Q(scoreOut));
    
                            
    //SignChanger(not sure about this one)
    SignChanger signChange(.a({{4{scoreOut[3]}}, scoreOut}), .sign(scoreOut[3]), .d(signChangerOut));                        
         
    //State Machine
    wire showTarget;
    wire [5:0]D;    
    wire swWire;
    assign swWire = |sw;
    wire buttonInput;
    assign buttonInput = BTNC & ~D[5] & ~D[4];
    State_Machine StateMachine(.clk(clk), .go(buttonInput), .anysw(|sw), .T4(foursecs), .T2(twosecs), .match(match), .won(gameWon), .lost(gameLost), 
                                .LoadTarget(loadTarget), .RTime(resetTimer), .IncScore(incrementScore), .DecScore(decrementScore), .ShowTarget(showTarget),
                                .FlashScore(scoreFlasher), .FlashLed(ledFlasher), .states(D));
    
    //sel input 
    assign selectorInput[15:12] = targetRand;   
    assign selectorInput[11:8] = 4'b0000;
    assign selectorInput[7:4] = 4'b0000; //negative sign
    assign selectorInput[3:0] = signChangerOut; //signChangerOut; //change this  

    //led logic
    wire ledFlashLogic;
    assign ledFlashLogic = D[3];
    assign led = ({16{ledFlashLogic}} & decoderOut & {16{timeCount[0]}}) | (16'hFFFF & {16{gameWon}}) & ~{16{timeCount[0]}} | ({16{D[5]}} & decoderOut & {16{timeCount[0]}});
//    assign led[15] = D[5];
//    assign led[14] = D[4];
//    assign led[13] = D[3];
//    assign led[12] = D[2];
//    assign led[11] = D[1];
//    assign led[10] = D[0];
                      
    //Old Modules
    Ring_Counter ringCounter(.clk(clk), .Advance(digsel), .Q(ringCounterOut));
    Selector select(.sel(ringCounterOut), .N({selectorInput}), .H(selectorToHex7Seg)); //Fix this module
    hex7seg sevenSegmentDisplay(.n(selectorToHex7Seg), .seg(segwire));
    assign seg = ({7{ringCounterOut[0]}} & segwire) | ({7{ringCounterOut[3]}} & segwire) | ({7{ringCounterOut[1]}} & ((({7{scoreOut[3]}}) & 7'b0111111) | ((~{7{scoreOut[3]}}) & 7'b1111111)));
    wire [6:0]segwire;

    //show target
     
    //an[] logic
    assign dp = 1'b1; //turning off all dp
    assign an[3] = ~(ringCounterOut[3] & (D[1]|D[2]|D[3])); //& ~loadTarget & timeCount[0] & scoreFlasher
    assign an[2] = 1'b1; //turned off
    assign an[1] = ~(ringCounterOut[1] & scoreOut[3]) | (D[2] & ~timeCount[0]); // ) | (match & ~timeCount[0]); 
    assign an[0] = ~(ringCounterOut[0]) | ((D[2] | incrementScore | gameWon) & ~timeCount[0]);// | ((match | incrementScore | gameWon) & timeCount[0] & scoreFlasher);
    
    
     
endmodule
    


