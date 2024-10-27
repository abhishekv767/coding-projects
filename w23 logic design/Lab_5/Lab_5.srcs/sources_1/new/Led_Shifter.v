`timescale 1ns / 1ps

module Led_Shifter(
    input clk,
    input stop,
    input go,
    input left,
    input right,
    input reset,
    input CE,
    output [17:0]Q
    );
    

    FDRE #(.INIT(1'b0)) ff1 (.C(clk), .R(reset), .CE(CE), .D((Q[17] & (left & ~right)) | (Q[1] & (right & ~left))), .Q((Q[0])));
    FDRE #(.INIT(1'b0)) ff2 (.C(clk), .R(reset), .CE(CE), .D((Q[0] & (left & ~right)) | (Q[2] & (right & ~left))), .Q((Q[1])));
    FDRE #(.INIT(1'b0)) ff3 (.C(clk), .R(reset), .CE(CE), .D((Q[1] & (left & ~right)) | (Q[3] & (right & ~left))), .Q((Q[2])));
    FDRE #(.INIT(1'b0)) ff4 (.C(clk), .R(reset), .CE(CE), .D((Q[2] & (left & ~right)) | (Q[4] & (right & ~left))), .Q((Q[3])));
    FDRE #(.INIT(1'b0)) ff5 (.C(clk), .R(reset), .CE(CE), .D((Q[3] & (left & ~right)) | (Q[5] & (right & ~left))), .Q((Q[4])));
    FDRE #(.INIT(1'b0)) ff6 (.C(clk), .R(reset), .CE(CE), .D((Q[4] & (left & ~right)) | (Q[6] & (right & ~left))), .Q((Q[5])));
    FDRE #(.INIT(1'b0)) ff7 (.C(clk), .R(reset), .CE(CE), .D((Q[5] & (left & ~right)) | (Q[7] & (right & ~left))), .Q((Q[6])));
    FDRE #(.INIT(1'b0)) ff8 (.C(clk), .R(reset), .CE(CE), .D((Q[6] & (left & ~right)) | (Q[8] & (right & ~left))), .Q((Q[7])));
    FDRE #(.INIT(1'b1)) ff9 (.C(clk), .R(reset), .CE(CE), .D((Q[7] & (left & ~right)) | (Q[9] & (right & ~left))), .Q((Q[8])));
    FDRE #(.INIT(1'b1)) ff10 (.C(clk), .R(reset), .CE(CE), .D((Q[8] & (left & ~right)) | (Q[10] & (right & ~left))), .Q((Q[9])));
    FDRE #(.INIT(1'b1)) ff11 (.C(clk), .R(reset), .CE(CE), .D((Q[9] & (left & ~right)) | (Q[11] & (right & ~left))), .Q((Q[10])));
    FDRE #(.INIT(1'b0)) ff12 (.C(clk), .R(reset), .CE(CE), .D((Q[10] & (left & ~right)) | (Q[12] & (right & ~left))), .Q((Q[11])));
    FDRE #(.INIT(1'b0)) ff13 (.C(clk), .R(reset), .CE(CE), .D((Q[11] & (left & ~right)) | (Q[13] & (right & ~left))), .Q((Q[12])));
    FDRE #(.INIT(1'b0)) ff14 (.C(clk), .R(reset), .CE(CE), .D((Q[12] & (left & ~right)) | (Q[14] & (right & ~left))), .Q((Q[13])));
    FDRE #(.INIT(1'b0)) ff15 (.C(clk), .R(reset), .CE(CE), .D((Q[13] & (left & ~right)) | (Q[15] & (right & ~left))), .Q((Q[14])));
    FDRE #(.INIT(1'b0)) ff16 (.C(clk), .R(reset), .CE(CE), .D((Q[14] & (left & ~right)) | (Q[16] & (right & ~left))), .Q((Q[15])));
    FDRE #(.INIT(1'b0)) ff17 (.C(clk), .R(reset), .CE(CE), .D((Q[15] & (left & ~right)) | (Q[17] & (right & ~left))), .Q((Q[16])));
    FDRE #(.INIT(1'b0)) ff18 (.C(clk), .R(reset), .CE(CE), .D((Q[16] & (left & ~right)) | (Q[0] & (right & ~left))), .Q((Q[17])));

    
endmodule
