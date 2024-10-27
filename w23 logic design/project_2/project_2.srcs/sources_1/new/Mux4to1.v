
module Mux4to1(
    input [3:0] in,
    input [1:0] sel,
    output o
    );
    
    assign o = (~sel[0]&~sel[1]&in[0]) | 
    (sel[0]&~sel[1]&in[1]) | 
    (~sel[0]&sel[1]&in[2]) | 
    (sel[0]&sel[1]&in[3]);
    
 endmodule