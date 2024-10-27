`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2022 01:34:53 AM
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(
    input cin,
    input a,
    input b,
    output s,
    output cout
    );
    
    m4_1 multi1 (.in({cin, ~cin, ~cin, cin}), .sel({a,b}), .o(s));
    m4_1 multi2 (.in({1'b1,cin,cin,1'b0}), .sel({a,b}), .o(cout));
    
endmodule
