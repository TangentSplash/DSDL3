// Block 1
// Module to generate signal that will select a digit
// and switch digits at ~1.2kHz

module pulse_generator(input  clock,
	       input  reset,
	       input  found_re,
	       input  raw,
	       output clean
	       // 2 bit output
	       );
   
   reg [11:0]		  counter;
   wire			  pulse; 
   
   always @ (posedge clock)
     begin
	if (reset) counter <= 12'd0; //synchronous reset	
	else	
	  if (counter != 12'd0) counter <= counter - 12'd1;
	  else
	    if (found_re) counter <= 12'd4095;
	    else counter <= counter;

     end
	assign pulse = (counter == 12'd1); 
	// pulse is sent out at end of 12 bit count

   assign clean = (raw && pulse);
   	
   
endmodule
   
