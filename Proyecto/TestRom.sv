`timescale 1 ps / 1 ps
module TestRom ();

	logic clk,rst;
	logic [7:0] q;
	logic [31:0] q2;
	RomCompleta prueba(clk,rst,q,q2);
	
	initial begin 
		rst=1; #10;rst=0;
		clk=0;
	end 
	
	
	always begin 
		clk=~clk; #5;
	
	end

endmodule