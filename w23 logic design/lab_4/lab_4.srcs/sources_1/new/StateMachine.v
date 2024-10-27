module SMachine_Logic(
    input clk,
    input anysw,
    input [5:0]Q,
    input go,
    input T2,
    input T4,
    input match,
    input won,
    input lost,
    output LoadTarget,
    output RTime,
    output IncScore,
    output DecScore,
    output ShowTarget,
    output FlashScore,
    output FlashLed,
    output [5:0]D
);

    //IDLE State
    assign D[0] = (~go & Q[0]) | (D[3] & Q[1] & ~T4) | (D[2] & Q[1] & ~T4) | (Q[1] & ~anysw & T4) | (Q[0] & anysw & go);
    
    //Round Logic
    //assign D[1] = (go & ~anysw & Q[0]) | (Q[1] & ~anysw & ~T2 & ~T4); 
    assign D[1] = (go & ~anysw & Q[0]) | (Q[1] & ~anysw & ~T4); 

    
    //match round condition 
    assign D[2] = (match & Q[1]) | (Q[2] & ~T4); 
    
    //not match round condiition
    assign D[3] = (T4 & Q[1]) | (~match & anysw & Q[1]) | (Q[3] & ~T4);
    
    //game won
    assign D[4] = (won & Q[2]) | (Q[4] & 1'b1);
    
    //game lost
    assign D[5] = (lost & Q[3]) | (Q[5] & 1'b1);

    //assign RTime = (go & ~anysw & Q[0]) | (Q[3] & T4) | (Q[2] & T4) | (match & ~T2 & ~T4 & Q[1]) | (T4 & Q[1]) | (~match & anysw & Q[1]);
    assign RTime = (go & ~anysw & Q[0]) | (Q[3] & T4) | (Q[2] & T4) | (match & Q[1]) | (T4 & Q[1]) | (~match & anysw & Q[1]);
    assign LoadTarget = (go & Q[0]) & ~anysw;
    assign IncScore = match & Q[1];
    assign DecScore = (T4 & Q[1]) | (~match & anysw & Q[1]);
    assign ShowTarget = ~match & Q[3];
    assign FlashScore = Q[2];
    assign FlashLed = D[3];    
        
endmodule

module State_Machine(
    input clk,
    input go,
    input anysw,
    input T4,
    input T2,
    input match,
    input won,
    input lost,
    output LoadTarget,
    output RTime,
    output IncScore,
    output DecScore,
    output ShowTarget,
    output FlashScore,
    output FlashLed,
    output [5:0]states
);
    
    wire [5:0]Q;
    wire [5:0]D;
    
    SMachine_Logic Logic(.clk(clk), .go(go), .Q(Q), .anysw(anysw), .T4(T4), .T2(T2), 
                    .match(match), .won(won), .lost(lost), .LoadTarget(LoadTarget), 
                    .RTime(RTime), .IncScore(IncScore), .DecScore(DecScore), 
                    .ShowTarget(ShowTarget), .FlashScore(FlashScore), .FlashLed(FlashLed), .D(D));
                
    FDRE #(.INIT(1'b1)) Q0FF (.C(clk), .CE(1'b1), .D(D[0]), .Q(Q[0]));
    FDRE #(.INIT(1'b0)) QFF[5:1] (.C({5{clk}}), .CE({5{1'b1}}), .D(D[5:1]), .Q(Q[5:1])); 
    
    assign states = Q;      

endmodule