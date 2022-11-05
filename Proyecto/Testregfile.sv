`timescale 1 ps / 1 ps
module Testregfile ();

	logic clk,rst;
	logic we3;
	logic [3:0] ra1,ra2,wa3;
	logic [31:0] wd3,r15,rd1,rd2;
	regfile registros (we3,ra1,ra2,wa3,wd3,r15,rd1,rd2);
	
	initial begin 
		rst=1; #10;rst=0;
		clk=0; #10
		
		we3=1'b1;
		ra1=3;
		ra2=4;
		wa3=1;
		wd3=7;
		r15=4;
		#10
		we3=1'b0;
		ra1=1;
		ra2=1;
		wa3=0;
		wd3=15;
		r15=4;
	end 
	
	
	always begin 
		clk=~clk; #5;
	
	end

endmodule