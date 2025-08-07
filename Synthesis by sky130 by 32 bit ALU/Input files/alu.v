module alu ( 
	input [31:0] var1 ,
	input [31:0] var2,
	input [2:0] op,
	output reg [31:0] result
);

reg [31:0] sum ,diff ,mul ,div ,quot ,square ,cube; 



always @ (op)
begin
sum [31:0] = var1 [31:0] + var2 [31:0];	diff [31:0] = var1 [31:0] - var2 [31:0];
mul [31:0] = var1 [31:0] * var2 [31:0];
div [31:0] = var1 [31:0] / var2 [31:0];
quot [31:0] = var1 [31:0] % var2 [31:0];
square [31:0] = var1 [31:0] * var1 [31:0];
cube [31:0] = var1 [31:0] * var1 [31:0] * var1 [31:0];

result = (op == 3'b000) ? sum [31:0] :
	 (op == 3'b001)	? diff [31:0] :
	 (op == 3'b010) ? mul [31:0] :
	 (op == 3'b011)	? div [31:0] :
	 (op == 3'b100) ? quot [31:0] :
	 (op == 3'b101)	? square [31:0] :
	 (op == 3'b110) ? cube [31:0] :
	 (op == 3'b111)	? 32'd0 : 32'bz  ;
end		
endmodule	

// mistake was that if reg is used for variable , dont put assign statement, if u dont use reg then only that variable can be for assign statement
