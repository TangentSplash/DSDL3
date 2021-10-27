`timescale 1ns / 1ps
module TB_top;
	// Inputs to module being verified
	reg clock, reset, raw;
	// Outputs from module being verified
	wire clean;
	// Instantiate module
	top uut (
		.clock(clock),
		.reset(reset),
		.raw(raw),
		.clean(clean)
		);
	// Generate clock signal
	initial
		begin
			clock  = 1'b1;
			forever
				#100 clock  = ~clock ;
		end
	// Generate other input signals
	initial
		begin
			reset = 1'b0;
			raw = 1'b0;
			#50
			reset = 1'b1;
			#300
			reset = 1'b0;
			#700
			raw = 1'b1;
			#900
			raw = 1'b0;
			#200
			raw = 1'b1;
			#300
			raw = 1'b0;
			#300
			raw = 1'b1;
			#800
			raw = 1'b0;
			#300
			raw = 1'b1;
			#1300
			raw = 1'b0;
			#100
			raw = 1'b1;
			#500
			raw = 1'b0;
			#100
			raw = 1'b1;
			#700
			raw = 1'b0;
			#200
			raw = 1'b1;
			#7800
			raw = 1'b0;
			#200
			raw = 1'b1;
			#300
			raw = 1'b0;
			#900
			raw = 1'b1;
			#100
			raw = 1'b0;
			#100
			raw = 1'b1;
			#800
			raw = 1'b0;
			#7200
			raw = 1'b1;
			#1100
			raw = 1'b0;
			#200
			raw = 1'b1;
			#300
			raw = 1'b0;
			#1300
			raw = 1'b1;
			#300
			raw = 1'b0;
			#100
			raw = 1'b1;
			#1100
			raw = 1'b0;
			#100
			raw = 1'b1;
			#65100
			raw = 1'b0;
			#300
			raw = 1'b1;
			#400
			raw = 1'b0;
			#200
			raw = 1'b1;
			#300
			raw = 1'b0;
			#200
			raw = 1'b1;
			#100
			raw = 1'b0;
			#100
			raw = 1'b1;
			#200
			raw = 1'b0;
			#200
			raw = 1'b1;
			#100
			raw = 1'b0;
			#200
			raw = 1'b1;
			#200
			raw = 1'b0;
			#200
			raw = 1'b1;
			#100
			raw = 1'b0;
			#200
			raw = 1'b1;
			#400
			raw = 1'b0;
			#400
			raw = 1'b1;
			#600
			raw = 1'b0;
			#22700
			raw = 1'b1;
			#200
			raw = 1'b0;
			#100
			raw = 1'b1;
			#100
			raw = 1'b0;
			#100
			raw = 1'b1;
			#100
			raw = 1'b0;
			#300
			raw = 1'b1;
			#200
			raw = 1'b0;
			#200
			raw = 1'b1;
			#100
			raw = 1'b0;
			#100
			raw = 1'b1;
			#200
			raw = 1'b0;
			#400
			raw = 1'b1;
			#100
			raw = 1'b0;
			#200
			raw = 1'b1;
			#300
			raw = 1'b0;
			#100
			raw = 1'b1;
			#200
			raw = 1'b0;
			#300
			raw = 1'b1;
			#200
			raw = 1'b0;
			#200
			raw = 1'b1;
			#300
			raw = 1'b0;
			#200
			raw = 1'b1;
			#200
			raw = 1'b0;
			#400
			raw = 1'b1;
			#100
			raw = 1'b0;
			#200
			raw = 1'b1;
			#17200
			raw = 1'b0;
			#300
			raw = 1'b1;
			#200
			raw = 1'b0;
			#300
			raw = 1'b1;
			#200
			raw = 1'b0;
			#200
			raw = 1'b1;
			#100
			raw = 1'b0;
			#100
			raw = 1'b1;
			#200
			raw = 1'b0;
			#200
			raw = 1'b1;
			#400
			raw = 1'b0;
			#400
			raw = 1'b1;
			#1000
			raw = 1'b0;
			#30900
			raw = 1'b1;
			#300
			raw = 1'b0;
			#200
			raw = 1'b1;
			#200
			raw = 1'b0;
			#200
			raw = 1'b1;
			#100
			raw = 1'b0;
			#300
			raw = 1'b1;
			#200
			raw = 1'b0;
			#100
			raw = 1'b1;
			#100
			raw = 1'b0;
			#100
			raw = 1'b1;
			#400
			raw = 1'b0;
			#100
			raw = 1'b1;
			#20050
			$stop;
		end
endmodule
