`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2022 12:49:36 AM
// Design Name: 
// Module Name: m4_1
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


module m4_1(
    input [3:0] in,
    input [1:0] sel,
    output o
    );
    
    assign o = (~sel[0]&~sel[1]&in[0]) | 
    (sel[0]&~sel[1]&in[1]) | 
    (~sel[0]&sel[1]&in[2]) | 
    (sel[0]&sel[1]&in[3]);
    
 endmodule
