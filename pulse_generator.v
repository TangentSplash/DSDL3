// Block 2
//Module to generate a one clock pulse after the timer has finished counting down
//if the current signal is high

module pulse_generator #(parameter COUNT = 4095)	//Module with a parameter to set the countdown to. 
//This allowed for easily changing this value during initial verification
		  (input  clock,		//Clock input
	       input  reset,		//Reset
	       input  found_re,		//Found_Rising edge, the counter should start 
	       input  raw,			//Raw input from the button
	       output clean			//Clean button press output
	       );
   
   reg [11:0] counter;	//12 bit counter to countdown. This allows a maximum of 0.819ms delay given the 5MHz clock
   wire pulse; 			//Pulse when the counter finishes
   
   //12 bit-counter
   always @ (posedge clock)
    begin
		if (reset) counter <= 12'd0; 						//synchronous reset	
		else	
		if (counter != 12'd0) counter <= counter - 12'd1;	//If the counter is not zero, countdown by one 
		else
			if (found_re) counter <= COUNT;					//Otherwise if a rising edge is found reset the counter
			else counter <= counter;						//If none of these are true, hold the current value (0)
	end
	
	assign pulse = (counter == 12'd1); 	// pulse is sent out at end of 12 bit count

   assign clean = (raw && pulse);		//The clean output is 1 when the current signal is 1 and the counter has just finished
   	
endmodule
   
