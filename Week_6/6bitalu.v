module six_bit_ALU
  (
  input [5:0]a,
  input [5:0]b,
  input carry_in,
  input [3:0] ALU_OP,
  output [5:0] result,
  output carry_out
  );

wire c0;
wire c1;
wire c2;
wire c3;
wire c4;

  
ALU_1_bit ALU1
  (
.a(a[0]),
.b(b[0]),
.carry_in(carry_in),
.ALU_OP(ALU_OP),
.result(result[0]),
.carry_out(c0)
  
  );
  
ALU_1_bit ALU2
  (
.a(a[1]),
.b(b[1]),
.carry_in(c0),
.ALU_OP(ALU_OP),
.result(result[1]),
.carry_out(c1)
  
  );
ALU_1_bit ALU3
  (
.a(a[2]),
.b(b[2]),
.carry_in(c1),
.ALU_OP(ALU_OP),
.result(result[2]),
.carry_out(c2)
  
  );
ALU_1_bit ALU4
  (
.a(a[3]),
.b(b[3]),
.carry_in(c2),
.ALU_OP(ALU_OP),
.result(result[3]),
.carry_out(c3)
  
  );
ALU_1_bit ALU5
  (
 .a(a[4]),
.b(b[4]),
.carry_in(c3),
.ALU_OP(ALU_OP),
.result(result[4]),
.carry_out(c4) 
 );
ALU_1_bit ALU6
  (
.a(a[5]),
.b(b[5]),
.carry_in(c4),
.ALU_OP(ALU_OP),
.result(result[5]),
.carry_out(carry_out)
  
  );
endmodule