module Adder8bit(
    input [7:0] a,
    input [7:0] b,
    input Cin,
    output [7:0] s,
    output Cout
    );
    
    wire wire0, wire1, wire2, wire3, wire4, wire5, wire6;
    
    FullAdder add0(.a(a[0]),.b(b[0]),.cin(Cin),.s(s[0]),.cout(wire0)) ;
    FullAdder add1(.a(a[1]),.b(b[1]),.cin(wire0),.s(s[1]),.cout(wire1)) ;
    FullAdder add2(.a(a[2]),.b(b[2]),.cin(wire1),.s(s[2]),.cout(wire2)) ;
    FullAdder add3(.a(a[3]),.b(b[3]),.cin(wire2),.s(s[3]),.cout(wire3)) ;
    FullAdder add4(.a(a[4]),.b(b[4]),.cin(wire3),.s(s[4]),.cout(wire4)) ;
    FullAdder add5(.a(a[5]),.b(b[5]),.cin(wire4),.s(s[5]),.cout(wire5)) ;
    FullAdder add6(.a(a[6]),.b(b[6]),.cin(wire5),.s(s[6]),.cout(wire6)) ;
    FullAdder add7(.a(a[7]),.b(b[7]),.cin(wire6),.s(s[7]),.cout(Cout)) ;
        
endmodule