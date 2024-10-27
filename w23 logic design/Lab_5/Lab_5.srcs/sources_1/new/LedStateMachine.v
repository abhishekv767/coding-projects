module LedStateMachineLogic(
    input clk,
    input go,
    input [2:0]Q,
    input leftEnd,
    input rightEnd,
    output [2:0]D
);
    
    //Left shifting State
    assign D[0] = (Q[0] & go) | (Q[1] & rightEnd) | (Q[0] & ~leftEnd);
    
    //Right shifting State
    assign D[1] = (Q[0] & leftEnd) | (Q[1] & ~rightEnd);
            
endmodule

module LedStateMachine(
    input clk,
    input go,
    input leftEnd,
    input rightEnd,
    output [1:0]states
);
    
    wire [1:0]Q;
    wire [1:0]D;
    
    FDRE #(.INIT(1'b1)) Q0FF (.C(clk), .CE(1'b1), .D(D[0]), .Q(Q[0]));
    FDRE #(.INIT(1'b0)) Q1FF (.C(clk), .CE(1'b1), .D(D[1]), .Q(Q[1]));
    
    assign states = Q;  
    
    LedStateMachineLogic Logic(.clk(clk), .Q(Q), .go(go), .leftEnd(leftEnd), .rightEnd(rightEnd), .D(D));
                
        

endmodule