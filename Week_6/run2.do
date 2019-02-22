vlog tb.v ALU_1bit.v
vsim -novopt work.tb

view wave

add wave sim:/tb/a
add wave sim:/tb/b
add wave sim:/tb/carry_in
add wave sim:/tb/ALU_OP
add wave sim:/tb/result
add wave sim:/tb/carry_out


run 300ns
