`timescale 1 ps / 1 ps
module TestController();
	logic clk,rst;
	logic [31:12] Instr;
	logic [3:0] ALUFlags;
	logic [1:0] RegSrc;
	logic RegWrite;
	logic [1:0] ImmSrc;
	logic ALUSrc;
	logic [1:0] ALUControl;
	logic MemWrite, MemtoReg;
	logic [31:0] cInst;
	controller controlUnit (clk, rst,Instr,ALUFlags,RegSrc, RegWrite, ImmSrc,
	ALUSrc, ALUControl, MemWrite, MemtoReg, PCSrc);
	
	initial begin 
		rst=1; #10;rst=0;
		clk=0; #10
		//cInst= 32'b11100011101000000000000000000000;
		cInst= 32'b00010100001000000000001111100010;
		Instr= cInst[31:12];
		ALUFlags= 4'b0000;
	end 
	
	
	always begin 
		clk=~clk; #5;
	end

endmodule
