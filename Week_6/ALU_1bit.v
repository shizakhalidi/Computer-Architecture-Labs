module ALU_1_bit
(
	input a,
	input b,
	input carry_in,
	input [3:0] ALU_OP,
	output reg result,
	output reg carry_out

);

always @ (a or b or ALU_OP)
begin
	if (ALU_OP[3:0]==4'b0000)
	begin
		result = a & b;
		carry_out =  0;
		end
	else
	   if (ALU_OP[3:0]==4'b0001)
		begin
		result = a | b;
		carry_out =  0;
		end

	else
	   if (ALU_OP[3:0]==4'b0010)
		begin
		result = (a & ~b & ~carry_in)|(~a & b & ~carry_in)|(~a & ~b & carry_in)|(a & b & carry_in);
		carry_out =  (a & carry_in) | (b & carry_in) | (a & b);
		end

	else
	   if (ALU_OP[3:0]==4'b0110)
		begin
		result = (a & b & ~carry_in)|(~a & ~b & ~carry_in)|(~a & b & carry_in)|(a & ~b & carry_in);
		carry_out =  (a & carry_in) | (~b & carry_in) | (a & ~b);
		end
	else
	   if (ALU_OP[3:0]==4'b1100)
		begin
		result = ~(a | b);
		carry_out =  0;
		end
end
endmodule
