`timescale 1ns / 1ps

module StateMachineTest();
    reg clk, go, anysw, T4, T2, match, won, lost;
    reg [5:0]Q;
    wire LoadTarget, RTime, IncScore, DecScore, ShowTarget, FlashScore, FlashLed;
    wire [5:0]D;

//    input clk,
//    input go,
//    input anysw,
//    input T4,
//    input T2,
//    input match,
//    input won,
//    input lost,
//    output LoadTarget,
//    output RTime,
//    output IncScore,
//    output DecScore,
//    output ShowTarget,
//    output FlashScore,
//    output FlashLed

SMachine_Logic // replace with your top level module's name
   UUT (
      .clk(clk),
      .go(go),
      .anysw(anysw),
      .T4(T4),
      .T2(T2),
      .match(match),
      .won(won),
      .lost(lost),
      .Q(Q),
      .LoadTarget(LoadTarget),
      .RTime(RTime),
      .IncScore(IncScore),
      .DecScore(DecScore),
      .ShowTarget(ShowTarget),
      .FlashScore(FlashScore),
      .FlashLed(FlashLed),
      .D(D)
      ); 
integer TX_ERROR = 0;
    
    parameter PERIOD = 10;
    parameter real DUTY_CYCLE = 0.5;
    parameter OFFSET = 2;
    
//    initial
//    begin
//        btnC = 1'bx;
//	    btnR = 1'b0;
   
//    #OFFSET
//		clkin = 1'b1;
//       forever
//         begin
//            #(PERIOD-(PERIOD*DUTY_CYCLE)) clkin = ~clkin;
//         end
//	  end
	  
    initial
	begin
	#2000;
	go = 1'b0;
	anysw = 1'b0;
	T4 = 1'b0;
	T2 = 1'b0;
	match = 1'b0;
	won = 1'b0;
	lost = 1'b0;
	Q[5:0] = 1'b0;

	#200;
//    //advancing to D[1]
//    //(go & ~anysw & Q[0])
    go = 1'b1;
    anysw = 1'b0;
    Q[0] = 1'b0;
    
    #400;
    match = 1'b1;
    T2 = 1'b0;
    T4 = 1'b0;
//    //Q[0] & ~anysw & T4
//    anysw = 1'b0;
//    Q[0] = 1'b1;
//    T4 = 1'b1;
    
	end
    
endmodule      