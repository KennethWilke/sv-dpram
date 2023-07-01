VERILOG_STANDARD=-g2012

test: dpram.sv dpram_tb.sv
	iverilog $(VERILOG_STANDARD) -o test_dpram dpram_tb.sv dpram.sv
	vvp test_dpram -lxt2

wave: test
	gtkwave dpram_tb.lx2

clean:
	rm -f test_dpram
