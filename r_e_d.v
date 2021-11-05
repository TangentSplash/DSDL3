// Block 1
//Rising edge detector module

module r_e_d(input  clock,  //Clock
        input reset,        //Synchronous reset
        input  raw,         //Button input
        output found_re     //Rising Edge found output
        );

   reg currentInput, prevInput;       //Registers

    //Rising edge detector
    always @ (posedge clock)  //with synchronous reset
        if (reset) 
            begin
                currentInput <= 1'd0; 
                prevInput <= 1'd0 ;
            end
        else 
            begin
                currentInput <= raw;        //Sample the current signal
                prevInput<=currentInput;    //Store the signal from the previous clock edge
            end 

    //If the signal had been 0 and is now 1, a rising edge has been found
    assign found_re=(currentInput && !prevInput);    

endmodule
