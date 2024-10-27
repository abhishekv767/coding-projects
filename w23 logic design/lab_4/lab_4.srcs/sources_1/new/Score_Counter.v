//`timescale 1ns / 1ps

//module Score_Counter(
//    input inc,
//    input dec,
//    input clk,
//    output [3:0]Q
//    );
    
//endmodule

`timescale 1ns / 1ps

module Score_Counter(
    input clk,
    input Up,
    input Dw,
    input LD,
    input [15:0] Din,
    output [7:0] Q,
    output UTC,
    output DTC
    );
        
    wire UTC1, DTC1;
    wire UTC2, DTC2;
    
    countUD4L count1(.clk(clk), .Up(Up), .Dw(Dw), .LD(LD), .Din(Din[3:0]), .Q(Q[3:0]), .UTC(UTC1), .DTC(DTC1));
    countUD4L count2(.clk(clk), .Up(UTC1 & Up), .Dw(DTC1 & Dw), .LD(LD), .Din(Din[7:4]), .Q(Q[7:4]), .UTC(UTC2), .DTC(DTC2));
    
    assign Q = ~Q;
    
    assign UTC = UTC1 & UTC2;
    assign DTC = ~DTC1 & ~DTC2;
    
endmodule


