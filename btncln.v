//Top Module
//Module to cleanup a button signal by sampling it repeatedly, until a rising edge is found
//When this is found, starting a timer, and at the end of the timer sampling the signal again
//If it is still high, the button has just been pressed, output a 1 for one clock cycle
module btncln(
    input clock,
    input reset,
    input raw,
    output clean
    );
    
    wire found_re;
    
    r_e_d risingedge(.clock(clock),.reset(reset),.raw(raw),.found_re(found_re));
    pulse_generator #(4095) pulse_generator(.clock(clock),.reset(reset),.raw(raw),.found_re(found_re),.clean(clean));

endmodule
