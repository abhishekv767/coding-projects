`timescale 1ns / 1ps

module inputDecoder2(
    input [1:0]A,
    output [3:0]d
    );
    
    assign d[3] = A[1] & A[0];
    assign d[2] = A[1] & ~A[0];
    assign d[1] = ~A[1] & A[0];
    assign d[0] = ~A[1] & ~A[0];
       
endmodule
