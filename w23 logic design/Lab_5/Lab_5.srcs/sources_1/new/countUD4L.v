`timescale 1ns / 1ps

module countUD4L(
    input clk,
    input Up,
    input Dw,
    input LD,
    input reset,
    input [3:0]Din,
    output [3:0]Q,
    output UTC,
    output DTC       
    );
     
    wire d[3:0];
    wire CE;
    assign CE = (Up^Dw)|LD;
       
    assign d[0] = ((Q[0] ^ (Up|Dw)));
    assign d[1] = ((Q[1] ^ (((Q[0]&Up)) | (Dw&~Q[0]))));
    assign d[2] = ((Q[2]^(((Up & Q[1] & Q[0])) | (Dw & ~Q[1] & ~Q[0]))));
    assign d[3] = ((Q[3]^((Up&Q[2]&Q[1]&Q[0])|(Dw&~Q[2]&~Q[1]&~Q[0]))));
    
    FDRE #(.INIT(1'b0)) Q0_FF (.C(clk), .CE(CE), .R(reset), .D((LD & Din[0]) | (~LD & d[0])), .Q(Q[0]));
    FDRE #(.INIT(1'b0)) Q1_FF (.C(clk), .CE(CE), .R(reset), .D((LD & Din[1]) | (~LD & d[1])), .Q(Q[1]));
    FDRE #(.INIT(1'b0)) Q2_FF (.C(clk), .CE(CE), .R(reset), .D((LD & Din[2]) | (~LD & d[2])), .Q(Q[2]));
    FDRE #(.INIT(1'b0)) Q3_FF (.C(clk), .CE(CE), .R(reset), .D((LD & Din[3]) | (~LD & d[3])), .Q(Q[3]));
        
    assign UTC = Q[0] & Q[1] & Q[2] & Q[3];
    assign DTC = ~Q[0] & ~Q[1] & ~Q[2] & ~Q[3];
    
endmodule




