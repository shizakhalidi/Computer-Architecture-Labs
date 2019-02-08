module top
(
	input clk, reset,
	input rx,
	output [3:0]q, 
	output tx
);

wire [7:0] counter_data;
assign  counter_data = {4'b0000,q};

	ripple_carry_counter r0
	(
		.clk(clk),
		.reset(reset),
		.q(q)
	);
	
	uart_top u0
	(
		.clk(clk),
		.reset(reset),
		.rx(rx),
		.data_to_tx(counter_data),
		.tx(tx)
		);
endmodule
		
		
	
	