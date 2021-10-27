`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2021 16:33:25
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    input clock,
    input reset,
    input raw,
    output clean
    );
    
    wire found_re;
    
    r_e_d risingedge(.clock(clock),.reset(reset),.raw(raw),.found_re(found_re));
    pulse_generator pulse_generator(.clock(clock),.reset(reset),.raw(raw),.found_re(found_re),.clean(clean));
endmodule
