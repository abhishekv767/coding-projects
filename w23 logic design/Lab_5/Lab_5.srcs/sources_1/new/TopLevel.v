`timescale 1ns / 1ps

module TopLevel(
    input clkin,
    input btnC,
    input btnR,
    input btnL,
    input btnU,
    input btnD, //global reset    
    input [15:0]sw,
    output [15:0]led,
    output [3:0] an,
    output [6:0]seg,
    output dp
    );
    
    //wires
    
    //Clock stuff
    wire clk;
    qsec_clks slowit (.clkin(clkin), .greset(btnD), .clk(clk), .digsel(digsel), .qsec(qsec));
    
    //button synchronizers
    wire BTNC, BTNU, BTNR, BTNL, BTND;
    FDRE #(.INIT()) sync1 (.C(clk), .CE(1'b1), .D(btnD), .Q(BTND));
    FDRE #(.INIT()) sync2 (.C(clk), .CE(1'b1), .D(btnL), .Q(BTNL));
    FDRE #(.INIT()) sync3 (.C(clk), .CE(1'b1), .D(btnR), .Q(BTNR));
    FDRE #(.INIT()) sync4 (.C(clk), .CE(1'b1), .D(btnU), .Q(BTNU));
    FDRE #(.INIT()) sync5 (.C(clk), .CE(1'b1), .D(btnC), .Q(BTNC));
    
    //random number generator
    wire [7:0]rngOut;
    LSFR randomNumGen(.clk(clk), .CE(1'b1), .out(rngOut));
    
    //Target
    wire [3:0]targetRand; 
    wire loadTarget;
    Target targetMod(.clk(clk), .CE(loadTarget & ~(LWon|RWon)), .D(rngOut[5:2]), .Q(targetRand));
    
    //Decoder
    wire [15:0]decoderOut;
    Decoder decode(.N(targetRand), .Q(decoderOut));

    //Time Counter
    wire [7:0]timeCount;
    wire [7:0]timeCount2;
    wire resetTimer;
    wire resetTwo;
    wire twosecs, eightsecs;
    Time_Counter timeCounter2(.clk(clk), .CE(qsec), .R(resetTwo), .Q(timeCount2));
    Time_Counter timeCounter(.clk(clk), .CE(qsec), .R(resetTimer), .Q(timeCount));
    assign twosecs =  timeCount2[4] & ~timeCount2[3] & ~timeCount2[2] & ~timeCount2[1] & ~timeCount2[0];
    assign eightsecs = timeCount[6] & ~timeCount[5] & ~timeCount[4] & ~timeCount[3] & ~timeCount[2] & ~timeCount[1] & ~timeCount[0];
       
    //Score Counter (fix reset condition)
    wire [3:0]playerLScore; 
    wire [3:0]playerRScore;
    wire LScoreUp, RScoreUp;
    wire decrementScore;
    wire match;
    wire LWon, RWon;
    countUD4L scoreL(.clk(clk), .Up(LScoreUp), .Dw(decrementScore), .reset(LWon & BTNU), .LD(1'b0), .Din(4'b0000), .Q(playerLScore));
    countUD4L scoreR(.clk(clk), .Up(RScoreUp), .Dw(decrementScore), .reset(RWon & BTNU), .LD(1'b0), .Din(4'b0000), .Q(playerRScore));      
                            
    
    //State Machine
    wire FlashScore, FlashLed;
    wire [8:0]D;
    assign match = (|(decoderOut & led));
    assign LWon = playerLScore[3] & ~playerLScore[2] & ~playerLScore[1] & ~playerLScore[0];
    assign RWon = playerRScore[3] & ~playerRScore[2] & ~playerRScore[1] & ~playerRScore[0];
    State_Machine SMachine(.clk(clk), .btnU(BTNU), .btnC(BTNC & ~(D[6]|D[7])), .btnR(BTNR), .btnL(BTNL), 
                        .btnD(BTND), .match(match), .LWon(LWon), .RWon(RWon),
                         .T2(twosecs), .T8(eightsecs), .LoadTarget(loadTarget), .resetTwo(resetTwo), .RTime(resetTimer), .LScoreUp(LScoreUp), 
                         .RScoreUp(RScoreUp), .FlashScore(FlashScore), .FlashLed(FlashLed), .states(D));
    
    //LED stuff
    wire [17:0]ledShifterWire;
    wire [2:0]ledstate;
    LedStateMachine ledsmachine(.clk(clk), .go(btnC & ~(D[6]|D[7])), .leftEnd(ledShifterWire[17]), .rightEnd(ledShifterWire[0]), .states(ledstate));
    Led_Shifter ledshift(.clk(clk), .go(D[1]|(~D[1]&D[2])|(~D[1]&D[3])|D[4]|D[5]), .stop(1'b0), .left(ledstate[0]), .right(ledstate[1]), .reset(1'b0), .CE(qsec & ~(D[2]|D[3]|D[4]|D[5])), .Q(ledShifterWire));
    assign led = (ledShifterWire[16:1] & {16{D[1] & ~(D[2]|D[3]|D[4]|D[5]) & ~(LWon|RWon)}}) | (ledShifterWire[16:1] & {16{((D[2]|D[3]|D[4]|D[5]) & D[1])}} & {16{timeCount[0]}}) | ({16{LWon}} & 16'b1000000000000000) | ({16{RWon}} & 16'b0000000000000001);
    // & ~(D[2]|D[3]|D[4]|D[5])
    //|D[2]|D[3]
    
    //Selector input
    wire [15:0]selectorInput;
    assign selectorInput[15:12] = targetRand;   
    assign selectorInput[11:8] = 4'b0000;
    assign selectorInput[7:4] = playerLScore;
    assign selectorInput[3:0] = playerRScore; 
    
    //old modules
    wire [3:0]ringCounterOut;
    wire [3:0]selectorToHex7Seg;
    Ring_Counter ringCounter(.clk(clk), .Advance(digsel), .Q(ringCounterOut));
    Selector select(.sel(ringCounterOut), .N({selectorInput}), .H(selectorToHex7Seg));
    hex7seg sevenSegmentDisplay(.n(selectorToHex7Seg), .seg(seg));
    
    //an[] logic
    assign dp = 1'b1; 
    assign an[3] = ~((ringCounterOut[3] & (~(LWon|RWon))) & (D[1]|D[2]|D[3])) | (((D[4]&D[1])|(D[5]&D[1]))& ~timeCount[0]);
    assign an[2] = 1'b1;
    assign an[1] = ~(ringCounterOut[1] & (D[0]|D[1]|D[2]|D[3]|D[4]|D[5]|D[6]|D[7])) | ((D[2]|D[3])& ~timeCount[0]); 
    assign an[0] = ~(ringCounterOut[0] & (D[0]|D[1]|D[2]|D[3]|D[4]|D[5]|D[6]|D[7])) | ((D[2]|D[3])& ~timeCount[0]);
    
//    assign led[0] = RWon;
//    assign led[1] = LWon;
//    assign led[8] = D[0];
//    assign led[9] = D[1];
//    assign led[10] = D[2];
//    assign led[11] = D[3];
//    assign led[12] = D[4];
//    assign led[13] = D[5];
//    assign led[14] = D[6];
//    assign led[15] = D[7];
    
    
endmodule