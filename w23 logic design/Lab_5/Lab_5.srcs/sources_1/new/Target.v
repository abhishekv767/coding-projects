`timescale 1ns / 1ps

module Target(
    input CE,
    input [3:0]D,
    input clk,
    output [3:0]Q
);

//    FDRE #(.INIT(1'b0)) ff[3:0] (.C({4{clk}}), .CE({4{CE}}), .D(D[3:0]), .Q(Q[3:0]));

    FDRE #(.INIT(1'b0)) ff3 (.C(clk), .CE(CE), .D(D[3]), .Q(Q[3]));
    FDRE #(.INIT(1'b0)) ff2 (.C(clk), .CE(CE), .D(D[2]), .Q(Q[2]));
    FDRE #(.INIT(1'b0)) ff1 (.C(clk), .CE(CE), .D(D[1]), .Q(Q[1]));
    FDRE #(.INIT(1'b0)) ff0 (.C(clk), .CE(CE), .D(D[0]), .Q(Q[0]));
    
endmodule