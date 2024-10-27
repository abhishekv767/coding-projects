module Top_Module(
    input clkin, 
    input btnR,
    input btnU,
    input [15:0]sw,
    output [6:0]seg,
    output dp,
    output [3:0]an,
    output [15:0]led
 );

wire dig_sel;
wire [6:0]hexseg1out;
wire [6:0]hexseg2out;
wire [7:0]signToHex;
wire dpAct;

assign led[15:0] = sw[15:0];
SignChanger sign(.a(sw[7:0]), .sign(btnU), .d(signToHex[7:0]), .ovfl(dpAct));

hex7seg seg1 (.n(signToHex[3:0]), .seg(hexseg1out));
hex7seg seg2 (.n(signToHex[7:4]), .seg(hexseg2out));

lab2_digsel digsel (.clkin(clkin), .greset(btnR), .digsel(dig_sel));

Mux2to1 select (.in0(hexseg1out), .in1(hexseg2out), .sel(dig_sel), .o(seg[6:0]));

 assign dp = ~dpAct;
 assign an[3] =1;
 assign an[2] =1;
 assign an[1] = ~dig_sel;
 assign an[0] = dig_sel;

endmodule