`timescale 1ns / 1ps

//module Time_Counter(
//    input CE,
//    input R,
//    input clk,
//    output UTC,
//    output[7:0]Q
//    );
    
//    assign UTC = &Q;
//    wire up;
//    assign up = CE;
//    wire utcWire[3:0];
    
//    count4bit count1(.clk(clk), .up(up), .Q(Q[3:0]), .reset(Q[6] | R), .UTC(utcWire[0]));
//    count4bit count2(.clk(clk), .up(utcWire[0] & up), .Q(Q[7:4]), .reset(Q[6] | R), .UTC(utcWire[1]));
    
////    count4bit count1(.clk(clk), .up(up), .Q(Q[3:0]), .reset(R), .UTC(utcWire[0]));
////    count4bit count2(.clk(clk), .up(utcWire[0] & up), .Q(Q[7:4]), .reset(R), .UTC(utcWire[1]));
////    count4bit count3(.clk(clk), .up(utcWire[1] & utcWire[0] & up), .Q(Q[11:8]), .reset(R), .UTC(utcWire[2]));
////    count4bit count4(.clk(clk), .up(utcWire[2] & utcWire[1] & utcWire[0] & up), .Q(Q[15:12]), .reset(R), .UTC(utcWire[3]));
    
  

//endmodule

module Time_Counter(
    input clk,
    input Up,
    input Dw,
    input LD,
    input reset,
    input [15:0] Din,
    output [15:0] Q,
    output UTC,
    output DTC,
    output DTCled 
    );
    
    wire UTC1, DTC1;
    wire UTC2, DTC2;
    wire UTC3, DTC3;
    wire UTC4, DTC4;
    
    countUD4L count1(.clk(clk), .reset(reset), .Up(Up), .Dw(Dw), .LD(LD), .Din(Din[3:0]), .Q(Q[3:0]), .UTC(UTC1), .DTC(DTC1));
    countUD4L count2(.clk(clk), .reset(reset), .Up(UTC1 & Up), .Dw(DTC1 & Dw), .LD(LD), .Din(Din[7:4]), .Q(Q[7:4]), .UTC(UTC2), .DTC(DTC2));
    countUD4L count3(.clk(clk), .reset(reset), .Up((UTC1 & UTC2) & Up), .Dw((DTC1 & DTC2) & Dw), .LD(LD), .Din(Din[11:8]), .Q(Q[11:8]), .UTC(UTC3), .DTC(DTC3));
    countUD4L count4(.clk(clk), .reset(reset), .Up((UTC1 & UTC2 & UTC3) & Up), .Dw((DTC1 & DTC2 & DTC3) & Dw), .LD(LD), .Din(Din[15:12]), .Q(Q[15:12]), .UTC(UTC4), .DTC(DTC4));
    
    assign UTC = UTC1 & UTC2 & UTC3 & UTC4;
    assign DTC = ~DTC1 & ~DTC2 & ~DTC3 & ~DTC4;
    assign DTCled = DTC1 & DTC2 & DTC3 & DTC4;
    
endmodule