module Ring_Counter(
    input clk,
    input Advance,
    output [3:0]Q
    );
    
    FDRE #(.INIT(1'b0)) Q0_FF (.C(clk), .CE(Advance), .D(Q[3]), .Q(Q[0]));
    FDRE #(.INIT(1'b0)) Q1_FF (.C(clk), .CE(Advance), .D(Q[0]), .Q(Q[1]));
    FDRE #(.INIT(1'b0)) Q2_FF (.C(clk), .CE(Advance), .D(Q[1]), .Q(Q[2]));
    FDRE #(.INIT(1'b1)) Q3_FF (.C(clk), .CE(Advance), .D(Q[2]), .Q(Q[3]));    
        
endmodule 