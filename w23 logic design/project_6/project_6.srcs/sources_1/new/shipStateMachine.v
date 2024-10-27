`timescale 1ns / 1ps

module shipSMachine_Logic(
    input [5:0]Q,
    input ship1floor,
    input ship2floor,
    input ship3floor,
    input ship4floor,
    input ship5floor,
    input clk,
    input go,
    input T1,
    output [5:0]shipGo,
    output resetTimer,
    output [5:0]D
);
    
    //Idle state(no ship come down)
    assign D[0] = (Q[0] & ~go) | (Q[5] & go);
    
    //ship1 come down
    assign D[1] = (go & Q[0])| (Q[1] & ~ship1floor) ;
    
    //ship2
    assign D[2] = (Q[1] & T1) | (Q[2] & ~ship2floor);
    
    //ship3
    assign D[3] = (Q[2] & T1) | (Q[3] & ~ship3floor);
    
    //ship4
    assign D[4] = (Q[3] & T1) | (Q[4] & ~ship4floor);
    
    //ship5
    assign D[5] = (Q[4] & T1) | (Q[5] & ~ship5floor);
    
    assign resetTimer = (go & Q[0]) | (Q[1] & T1) | (Q[2] & T1) | (Q[3] & T1) | (Q[4] & T1);
            
endmodule

module shipState_Machine(
    input clk,
    input go,
    input T1,
    input ship1floor,
    input ship2floor,
    input ship3floor,
    input ship4floor,
    input ship5floor,
    output [5:0]shipGo,
    output resetTimer,
    output [5:0]states
);
    
    wire [5:0]Q;
    wire [5:0]D;
    
    shipSMachine_Logic Logic(.clk(clk), .go(go), .Q(Q), .shipGo(shipGo), .T1(T1),
                             .resetTimer(resetTimer), .D(D),
                             .ship1floor(ship1floor),
                             .ship2floor(ship2floor),
                             .ship3floor(ship3floor),
                             .ship4floor(ship4floor),
                             .ship5floor(ship5floor));
                
    FDRE #(.INIT(1'b1)) Q0FF (.C(clk), .CE(1'b1), .D(D[0]), .Q(Q[0]));
    FDRE #(.INIT(1'b0)) QFF[5:1] (.C({5{clk}}), .CE({5{1'b1}}), .D(D[5:1]), .Q(Q[5:1])); 
    
    assign states = Q;      

endmodule