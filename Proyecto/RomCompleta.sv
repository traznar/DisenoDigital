module RomCompleta(input clk, rst, output [7:0]data, output [31:0] data2);

		logic [13:0] address;
		logic [7:0] q;
		logic [31:0] q2;
 		Counter pc (clk, rst,1'b1,address);
		Memoria_ROM memoria (address,clk, q);
		Memoria_Int instrucciones (address[4:0],clk, q2);
		assign data= q;
		assign data2= q2;
	
endmodule