module SMachine_Logic(
    input clk,
    input [7:0]Q,
    input btnU,
    input btnC,
    input btnR,
    input btnL,
    input btnD,
    input match,
    input LWon,
    input RWon,    
    input T2,
    input T8,
    output LoadTarget,
    output resetTwo,
    output RTime,
    output LScoreUp,
    output RScoreUp,
    output FlashScore,
    output FlashLed,
    output [7:0]D
);
    
    //Idle state
    assign D[0] = (Q[0] & ~btnC) | (Q[1] & T8 & ~btnL & ~btnR) | (Q[6] & btnU) | (Q[7] & btnU) | (Q[2] & T2) | (Q[3] & T2) ;
    
    //Start state
    assign D[1] = (btnC & Q[0]) | (Q[1] & ~T8 & ~((Q[2] & T2) | (Q[3] & T2)))| (Q[4] & T2) | (Q[5] & T2);
    
    //Left wins round
    assign D[2] = (Q[1] & btnL & match) | (Q[2] & ~T2) ;
    
    //Right wins round
    assign D[3] = (Q[1] & btnR & match) | (Q[3] & ~T2);
    
    //Left loses round
    assign D[4] = (Q[1] & btnL & ~match) | (Q[4] & ~T2) ;
    
    //Right Loses round
    assign D[5] = (Q[1] & btnR & ~match) | (Q[5] & ~T2);
    
    //Left wins game
    assign D[6] = (Q[2] & LWon) | (Q[6] & ~btnU) ;
    
    //Right wins game     
    assign D[7] = (Q[3] & RWon) | (Q[7] & ~btnU);
    
    assign LoadTarget = (btnC & Q[0]);// | (Q[4] & T2) | (Q[5] & T2) | (Q[1] & ~T8);
    assign RTime = (btnC & Q[0]);// | 
    assign resetTwo = (Q[1] & btnL & match) | (Q[1] & btnR & ~match) | (Q[1] & btnR & match) | (Q[1] & btnL & ~match);
    assign LScoreUp = (Q[2] & T2) | ((Q[5] & T2) & ~(Q[3] & T2));
    assign RScoreUp = (Q[3] & T2) | ((Q[4] & T2) & ~(Q[2] & T2));
//    assign FlashScore =;
//    assign FlashLed =;
            
endmodule

module State_Machine(
    input clk,
    input btnU,
    input btnC,
    input btnR,
    input btnL,
    input btnD,
    input match,
    input LWon,
    input RWon,
    input T2,
    input T8,
    output LoadTarget,
    output resetTwo,
    output RTime,
    output LScoreUp,
    output RScoreUp,
    output FlashScore,
    output FlashLed,
    output [7:0]states
);
    
    wire [7:0]Q;
    wire [7:0]D;
    
    SMachine_Logic Logic(.clk(clk), .Q(Q), .btnU(btnU), .btnC(btnC), .btnR(btnR), .btnL(btnL), 
                        .btnD(btnD), .match(match), .LWon(LWon), .RWon(RWon),
                         .T2(T2), .T8(T8), .LoadTarget(LoadTarget), .resetTwo(resetTwo), .RTime(RTime), .LScoreUp(LScoreUp), 
                         .RScoreUp(RScoreUp), .FlashScore(FlashScore), .FlashLed(FlashLed), .D(D));
                
    FDRE #(.INIT(1'b1)) Q0FF (.C(clk), .CE(1'b1), .D(D[0]), .Q(Q[0]));
    FDRE #(.INIT(1'b0)) QFF[7:1] (.C({7{clk}}), .CE({7{1'b1}}), .D(D[7:1]), .Q(Q[7:1])); 
    
    assign states = Q;      

endmodule