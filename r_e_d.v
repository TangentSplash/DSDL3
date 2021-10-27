/*Lab 3 Engine Controller*/

module r_e_d(input  clock,     //Clock
        input reset,        //Synchronous reset
        input  raw,         //Button input
        output found_re //Rising Edge
        );

   reg currentInput, prevInput;       //Registers

   //================== State register basic params========================
    always @ (posedge clock)  //with synchronous reset
        if (reset) 
         begin
            currentInput <= 1'd0; 
            prevInput <= 1'd0 ;
        end
        else 
            begin
            currentInput <= raw;
            prevInput<=currentInput;
            end 
 
   //================== Output Logic ========================================
   assign found_re=(currentInput && !prevInput);
endmodule
