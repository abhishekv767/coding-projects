`timescale 1ns / 1ps

module Led_Shifter_Right(
    input clk,
    input reset,
    input CE,
    output [17:0]Q
    );
    
    FDRE #(.INIT(1'b0)) ff1 (.C(clk), .R(reset), .CE(CE), .D(Q[0]), .Q(Q[17]));
    FDRE #(.INIT(1'b0)) ff2 (.C(clk), .R(reset), .CE(CE), .D(Q[17]), .Q(Q[16]));
    FDRE #(.INIT(1'b0)) ff3 (.C(clk), .R(reset), .CE(CE), .D(Q[16]), .Q(Q[15]));
    FDRE #(.INIT(1'b0)) ff4 (.C(clk), .R(reset), .CE(CE), .D(Q[15]), .Q(Q[14]));
    FDRE #(.INIT(1'b0)) ff5 (.C(clk), .R(reset), .CE(CE), .D(Q[14]), .Q(Q[13]));
    FDRE #(.INIT(1'b0)) ff6 (.C(clk), .R(reset), .CE(CE), .D(Q[13]), .Q(Q[12]));
    FDRE #(.INIT(1'b0)) ff7 (.C(clk), .R(reset), .CE(CE), .D(Q[12]), .Q(Q[11]));
    FDRE #(.INIT(1'b0)) ff8 (.C(clk), .R(reset), .CE(CE), .D(Q[11]), .Q(Q[10]));
    FDRE #(.INIT(1'b1)) ff9 (.C(clk), .R(reset), .CE(CE), .D(Q[10]), .Q(Q[9]));
    FDRE #(.INIT(1'b1)) ff10 (.C(clk), .R(reset), .CE(CE), .D(Q[9]), .Q(Q[8]));
    FDRE #(.INIT(1'b1)) ff11 (.C(clk), .R(reset), .CE(CE), .D(Q[8]), .Q(Q[7]));
    FDRE #(.INIT(1'b0)) ff12 (.C(clk), .R(reset), .CE(CE), .D(Q[7]), .Q(Q[6]));
    FDRE #(.INIT(1'b0)) ff13 (.C(clk), .R(reset), .CE(CE), .D(Q[6]), .Q(Q[5]));
    FDRE #(.INIT(1'b0)) ff14 (.C(clk), .R(reset), .CE(CE), .D(Q[5]), .Q(Q[4]));
    FDRE #(.INIT(1'b0)) ff15 (.C(clk), .R(reset), .CE(CE), .D(Q[4]), .Q(Q[3]));
    FDRE #(.INIT(1'b0)) ff16 (.C(clk), .R(reset), .CE(CE), .D(Q[3]), .Q(Q[2]));
    FDRE #(.INIT(1'b0)) ff17 (.C(clk), .R(reset), .CE(CE), .D(Q[2]), .Q(Q[1]));
    FDRE #(.INIT(1'b0)) ff18 (.C(clk), .R(reset), .CE(CE), .D(Q[1]), .Q(Q[0]));
    
endmodule
