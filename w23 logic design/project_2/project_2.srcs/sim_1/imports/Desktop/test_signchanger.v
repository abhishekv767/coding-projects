`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:  Martine
// 
// Create Date: 1/12/2023 06:26:52 PM
// Design Name: 
// Module Name: test_signchanger
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test_signchanger( ); // no inputs/outputs, this is a wrapper


// registers to hold values for the inputs to your top level
    reg [15:0] sw;
    reg btnU, btnR, clkin;
// wires to see the values of the outputs of your top level
    wire [6:0] seg;
    wire [3:0] an;
    wire dp;
    wire [15:0] led;
    
// create one instance of your top level
// and attach it to the registers and wires created above
    Top_Module UUT (
     .sw(sw),
     .btnU(btnU),
     .btnR(btnR), 
     .clkin(clkin),
     .seg(seg),
     .an(an),
     .led(led),
     .dp(dp)
    );
    
    
// create an oscillating signal to impersonate the clock provided on the BASYS 3 board
    parameter PERIOD = 10;
    parameter real DUTY_CYCLE = 0.5;
    parameter OFFSET = 2;

    initial    // Clock process for clkin
    begin
        #OFFSET
		  clkin = 1'b1;
        forever
        begin
            #(PERIOD-(PERIOD*DUTY_CYCLE)) clkin = ~clkin;
        end
    end
	
// here is where the values for the registers are provided
// time must be advanced so that the change will have an effect
   initial
   begin
	 // add your test vectors here
	 // to set signal foo to value 0 use
	 // foo = 1'b0;
	 // to set signal foo to value 1 use
	 // foo = 1'b1;
	 //always advance time my multiples of 500ns
	 // to advance time by 100ns use the following line
	 
	 btnR=1'b0;
	 btnU=1'b0;
	 sw = 16'h0017;
	 
	 #500;
	 btnU=1'b1;
     
     #500;
     btnU=1'b0;
	 sw = 16'h0001;
	 
	 #500;
	 btnU=1'b0;
	 sw = 16'h0010;
     
     #500;
     btnU=1'b0;
     sw = 16'h0011;
     
     #500;
     btnU=1'b0;
     sw = 16'h0100;
     
     #500;
     btnU=1'b0;
     sw = 16'h0101;
     
     #500;
     btnU=1'b0;
     sw = 16'h0110;
     
     #500;
     btnU=1'b0;
     sw = 16'h0111;
     
     #500;
     btnU=1'b0;
     sw = 16'h1000;
     
     #500;
     btnU=1'b0;
     sw = 16'h1001;
     
     #500;
     btnU=1'b0;
     sw = 16'h1010;
     
     #500;
     btnU=1'b0;
     sw = 16'h1011;
     
     #500;
     btnU=1'b0;
     sw = 16'h1110;

     #500;
     btnU=1'b0;
     sw = 16'h1111;
     
     #500;
     btnU=1'b1;
	 sw = 16'h0001;
	 
	 #500;
	 btnU=1'b1;
	 sw = 16'h0010;
     
     #500;
     btnU=1'b1;
     sw = 16'h0011;
     
     #500;
     btnU=1'b1;
     sw = 16'h0100;
     
     #500;
     btnU=1'b1;
     sw = 16'h0101;
     
     #500;
     btnU=1'b1;
     sw = 16'h0110;
     
     #500;
     btnU=1'b1;
     sw = 16'h0111;
     
     #500;
     btnU=1'b1;
     sw = 16'h1000;
     
     #500;
     btnU=1'b1;
     sw = 16'h1001;
     
     #500;
     btnU=1'b1;
     sw = 16'h1010;
     
     #500;
     btnU=1'b1;
     sw = 16'h1011;
     
     #500;
     btnU=1'b1;
     sw = 16'h1110;

     #500;
     btnU=1'b1;
     sw = 16'h1111;



// you will need to add more ....
          
    end

endmodule
