`timescale 1ns / 1ps

module FullAdder(
    input cin,
    input a,
    input b,
    output s,
    output cout
    );
    
    assign s = a ^ b ^ cin;
    assign cout = (a & b) | (cin & a) | (cin & b);
    
endmodule