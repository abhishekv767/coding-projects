`timescale 1ns / 1ps

module count4bit(
    input clk,
    input reset,
    input up,
    
    output [3:0]Q,
    output UTC
    );
    
    assign UTC = &Q;
    
    wire d[3:0];
    wire out[3:0];
       
    assign d[0] = (Q[0] ^ up);
    assign d[1] = (up & (Q[1] ^ Q[0] & up));
    assign d[2] = (up & (Q[2] ^ Q[1] & Q[0] & up));
    assign d[3] = (up ^ (Q[2] & Q[1] & Q[0] & up));
    
    FDRE #(.INIT(1'b0)) Q0_FF (.C(clk), .R(reset), .CE(up), .D(d[0]), .Q(Q[0]));
    FDRE #(.INIT(1'b0)) Q1_FF (.C(clk), .R(reset), .CE(up), .D(d[1]), .Q(Q[1]));
    FDRE #(.INIT(1'b0)) Q2_FF (.C(clk), .R(reset), .CE(up), .D(d[2]), .Q(Q[2]));
    FDRE #(.INIT(1'b0)) Q3_FF (.C(clk), .R(reset), .CE(up), .D(d[3]), .Q(Q[3]));
    
//    assign UTC = Q[0] & Q[1] & Q[2] & Q[3];
    
endmodule