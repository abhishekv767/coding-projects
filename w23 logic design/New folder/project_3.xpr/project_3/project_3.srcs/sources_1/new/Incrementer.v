
module Incrementer(
  input [7:0] a,
  input [1:0] b,
  output [7:0] s
  );
  
  wire w1,w2,w3,w4,w5,w6,w7;
  
  FullAdder add1(.cin(1'b0), .a(a[0]), .b(b[0]), .s(s[0]), .cout(w1));
  FullAdder add2(.cin(w1), .a(a[1]), .b(b[1]), .s(s[1]), .cout(w2));
  FullAdder add3(.cin(w2), .a(a[2]), .b(1'b0), .s(s[2]), .cout(w3));
  FullAdder add4(.cin(w3), .a(a[3]), .b(1'b0), .s(s[3]), .cout(w4));
  FullAdder add5(.cin(w4), .a(a[4]), .b(1'b0), .s(s[4]), .cout(w5));
  FullAdder add6(.cin(w5), .a(a[5]), .b(1'b0), .s(s[5]), .cout(w6));
  FullAdder add7(.cin(w6), .a(a[6]), .b(1'b0), .s(s[6]), .cout(w7));
  FullAdder add8(.cin(w7), .a(a[7]), .b(1'b0), .s(s[7]));
  
endmodule