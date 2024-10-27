`timescale 1ns / 1ps

module edgeDetector(
    input clk,
    input in,    
    output edgeOut
    );
    
    wire w1, w2;
    FDRE #(.INIT(1'b0)) Q0_FF (.C(clk), .CE(1'b1), .D(in), .Q(w1));
    FDRE #(.INIT(1'b0)) Q1_FF (.C(clk), .CE(1'b1), .D(w1), .Q(w2));
    assign edgeOut = ~w2 & w1;
    
endmodule
