`timescale 1ns / 1ps

module Decoder(
    input [3:0]N,
    output [15:0]Q
);
    wire [3:0]a;
    wire [3:0]b;    

    inputDecoder2 decode1 (.A(N[1:0]), .d(b));
    inputDecoder2 decode2 (.A(N[3:2]), .d(a));
    
    assign Q[0] = a[0] & b[0];
    assign Q[1] = a[0] & b[1];
    assign Q[2] = a[0] & b[2];
    assign Q[3] = a[0] & b[3];
    assign Q[4] = a[1] & b[0];
    assign Q[5] = a[1] & b[1];
    assign Q[6] = a[1] & b[2];
    assign Q[7] = a[1] & b[3];
    assign Q[8] = a[2] & b[0];
    assign Q[9] = a[2] & b[1];
    assign Q[10] = a[2] & b[2];
    assign Q[11] = a[2] & b[3];
    assign Q[12] = a[3] & b[0];
    assign Q[13] = a[3] & b[1];
    assign Q[14] = a[3] & b[2];
    assign Q[15] = a[3] & b[3];   
    
endmodule