module Counter #(parameter N=14) (input clk, rst, en, output [N-1:0]q);

	logic [N-1:0]qAux;
	
	always_ff @(posedge clk or posedge rst)
		if (rst)
			qAux=8'h00;
		else
			if (en)
					qAux=qAux+1;
	
	assign q=qAux;



endmodule