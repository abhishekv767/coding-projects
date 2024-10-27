`timescale 1ns / 1ps

module Time_Counter(
    input CE,
    input R,
    input clk,
    output UTC,
    output[7:0]Q
//    output DTC
    );
    
//    assign DTC = ~&Q;
    
    assign UTC = &Q;
    wire up;
    assign up = CE;
    wire utcWire[1:0];
    
    count4bit count1(.clk(clk), .up(up), .Q(Q[3:0]), .reset(Q[6] | R), .UTC(utcWire[0]));
    count4bit count2(.clk(clk), .up(utcWire[0] & up), .Q(Q[7:4]), .reset(Q[6] | R), .UTC(utcWire[1]));
    
//    count4bit count1(.clk(clk), .up(up), .Q(Q[3:0]), .reset(Q[6] | R), .UTC(utcWire[0]));
//    count4bit count2(.clk(clk), .up(up & utc), .Q(Q[7:4]), .reset(Q[6] | R), .UTC(utcWire[1]));
    

endmodule