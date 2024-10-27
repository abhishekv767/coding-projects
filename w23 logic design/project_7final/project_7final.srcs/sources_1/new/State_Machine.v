`timescale 1ns / 1ps

module SMachine_Logic(
    input [5:0]Q,
    input clk,
    input btnU,
    input btnC,
    input go,
    input collisionPinkSlugWithPlayer,
    input collisionPinkSlugWithFloor,
    input collisionShipWithPlayer,
    input collisionShipWithFloor,
    input T1,
    input T3,
    output loadTarget,
    output resetTimer,
    output scoreUp,
    output shipReset,
    output [5:0]D
);
    
    //Idle state(no ship come down)
//    assign D[0] = (Q[0] & ~go) | (Q[5] & go) | (Q[4] & T1);
    assign D[0] = (Q[0] & ~go) | (Q[5] & btnC)| (Q[3] & btnC)| (Q[2] & btnC)| (Q[1] & btnC);
    
    //ship fall
    assign D[1] = (go & Q[0]) | (Q[1] & ~(collisionShipWithFloor|collisionShipWithPlayer|btnC)) | (Q[3] &  T3) | (Q[4] & T1) ;
    
    //ship sit on floor for one second and disappear
    assign D[2] = (Q[1] & collisionShipWithFloor) | (Q[2] & ~(T1|collisionShipWithPlayer|btnC));
    
    //slug sit on floor for three secs and disappears
    assign D[3] = (Q[2] & T1) | (Q[3] & ~(T3|collisionPinkSlugWithPlayer|btnC));
    
    //picks up slug
    assign D[4] = (Q[3] & collisionPinkSlugWithPlayer) | (Q[4] & ~T1);
    
    //Right Loses round
    assign D[5] = ((Q[1]|Q[2]) & collisionShipWithPlayer) | (Q[5] & ~btnC);
    
    assign loadTarget = (go & Q[0])  | (Q[3] &  T3) | (Q[4] & T1) | (Q[5] & btnC);
    assign resetTimer = (go & Q[0]) | | (Q[5] & btnC) | (Q[1] & collisionShipWithFloor) | (Q[2] & T1) | (Q[3] & collisionPinkSlugWithPlayer)| (Q[4] & T1);// | (Q[3] & T3);// | (Q[3] & collisionPinkSlugWithPlayer);
    assign scoreUp = Q[4] & T1;
    assign shipReset = (Q[3] &  T3) | (Q[4] & T1)| (go & Q[0]);
            
endmodule

module State_Machine(
    input clk,
    input btnU,
    input btnC,
    input go,
    input collisionPinkSlugWithPlayer,
    input collisionPinkSlugWithFloor,
    input collisionShipWithPlayer,
    input collisionShipWithFloor,
    input T1,
    input T3,
    output scoreUp,
    output loadTarget,
    output resetTimer,
    output shipReset,
    output [5:0]states
);
    
    wire [5:0]Q;
    wire [5:0]D;
    
    SMachine_Logic Logic(.clk(clk), .btnC(btnC), .btnU(btnU), .go(go), .Q(Q), .collisionPinkSlugWithPlayer(collisionPinkSlugWithPlayer),
                         .collisionPinkSlugWithFloor(collisionPinkSlugWithFloor), .collisionShipWithPlayer(collisionShipWithPlayer),
                         .collisionShipWithFloor(collisionShipWithFloor), .T1(T1), .T3(T3), .scoreUp(scoreUp),
                         .loadTarget(loadTarget), .resetTimer(resetTimer), .shipReset(shipReset), .D(D));
                
    FDRE #(.INIT(1'b1)) Q0FF (.C(clk), .CE(1'b1), .D(D[0]), .Q(Q[0]));
    FDRE #(.INIT(1'b0)) QFF[5:1] (.C({5{clk}}), .CE({5{1'b1}}), .D(D[5:1]), .Q(Q[5:1])); 
    
    assign states = Q;      

endmodule