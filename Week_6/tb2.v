module tb
();

reg [5:0]a;
reg [5:0]b;
reg carry_in;
reg [3:0] ALU_OP;
wire [5:0]result;
wire carry_out;

six_bit_ALU six_b_alu
(
.a(a),
.b(b),
.carry_in(carry_in),
.ALU_OP(ALU_OP),
.result(result),
.carry_out(carry_out)
);

initial
begin
a=6'b100111;
b=1'b010101;
ALU_OP=4'b0000;
carry_in = 1'b0;
#10
a=6'b100111;
b=1'b010101;
ALU_OP=4'b0001;
carry_in = 1'b0;
#10
a=6'b100111;
b=1'b010101;
ALU_OP=4'b0010;
carry_in = 1'b0;
#10
a=6'b100111;
b=1'b010101;
ALU_OP=4'b0110;
carry_in = 1'b0;
#10
a=6'b100111;
b=1'b010101;
ALU_OP=4'b1100;
carry_in = 1'b0;
end
initial
$monitor("result", result);

endmodule