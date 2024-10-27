module SignChanger(
    input [7:0] a,
    input sign,
    output [7:0] d
//    output ovfl
);
    
    wire [7:0]AdderToMux;
    Adder8bit add8(.a(~a), .b(8'b00000001), .Cin(1'b0), .s(AdderToMux));
    m2_1x8 m218mux(.in0(a), .in1(AdderToMux), .sel(sign), .o(d));    
      
//    assign ovfl = (a[7] & ~a[6] & ~a[5] & ~a[4] & ~a[3] & ~a[2] & ~a[1] & ~a[0] & sign);

endmodule