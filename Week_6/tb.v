module tb
();

reg a;
reg b;
reg carry_in;
reg [3:0] ALU_OP;
wire result;
wire carry_out;

ALU_1_bit alu1
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
a=1'b1;
b=1'b1;
ALU_OP=4'b0000;
carry_in = 1'b0;
#10
a=1'b1;
b=1'b1;
ALU_OP=4'b0001;
carry_in = 1'b0;

#10
a=1'b1;
b=1'b1;
ALU_OP=4'b0010;
carry_in = 1'b0;

#10
a=1'b1;
b=1'b1;
ALU_OP=4'b0110;
carry_in = 1'b1;

#10
a=1'b1;
b=1'b1;
ALU_OP=4'b1100;
carry_in = 1'b0;
end
initial
$monitor("result", result);

endmodule