`timescale 1ns / 1ps

module LSFR(
    input clk,
    input CE,
    output [7:0] out
    );
 
    wire [7:0] rnd;
    wire in;
    assign in = rnd[0] ^ rnd[5] ^ rnd[6] ^ rnd[7];
    assign out [7:0] = rnd[7:0];
        
    FDRE #(.INIT(1'b1)) Q0_FF0 (.C(clk), .R(1'b0), .CE(CE), .D(in), .Q(rnd[0]));
    FDRE #(.INIT(1'b0)) Q0_FF1 (.C(clk), .R(1'b0), .CE(CE), .D(rnd[0]), .Q(rnd[1]));
    FDRE #(.INIT(1'b0)) Q0_FF2 (.C(clk), .R(1'b0), .CE(CE), .D(rnd[1]), .Q(rnd[2]));
    FDRE #(.INIT(1'b0)) Q0_FF3 (.C(clk), .R(1'b0), .CE(CE), .D(rnd[2]), .Q(rnd[3]));
    FDRE #(.INIT(1'b0)) Q0_FF4 (.C(clk), .R(1'b0), .CE(CE), .D(rnd[3]), .Q(rnd[4]));
    FDRE #(.INIT(1'b0)) Q0_FF5 (.C(clk), .R(1'b0), .CE(CE), .D(rnd[4]), .Q(rnd[5]));
    FDRE #(.INIT(1'b0)) Q0_FF6 (.C(clk), .R(1'b0), .CE(CE), .D(rnd[5]), .Q(rnd[6]));
    FDRE #(.INIT(1'b0)) Q0_FF7 (.C(clk), .R(1'b0), .CE(CE), .D(rnd[6]), .Q(rnd[7])); 
    
 endmodule 