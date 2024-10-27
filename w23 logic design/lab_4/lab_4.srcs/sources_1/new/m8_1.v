`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2022 01:50:34 AM
// Design Name: 
// Module Name: m8_1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module m8_1(
    input [7:0] in,
    input [2:0] sel,
    output o
    );
    
    assign o = (~sel[0]&~sel[1]&~sel[2]&in[0])| 
               (sel[0]&~sel[1]&~sel[2]&in[1]) | 
               (~sel[0]&sel[1]&~sel[2]&in[2]) | 
               (sel[0]&sel[1]&~sel[2]&in[3])  |
               (~sel[0]&~sel[1]&sel[2]&in[4]) |
               (sel[0]&~sel[1]&sel[2]&in[5])  |
               (~sel[0]&sel[1]&sel[2]&in[6])  |
               (sel[0]&sel[1]&sel[2]&in[7]);

endmodule
