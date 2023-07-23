`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/22/2023 12:10:53 AM
// Design Name: 
// Module Name: Top_Module
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


module Top_Module(
    input clk,
    input [7:0] sw,
    output [3:0] an,
    output [6:0] seg
    );
    wire clk_out; 
    wire [1:0] counter_out;
    wire [3:0] mux_out;
    wire [3:0] ones, tens,hundreds, thousands;
//    parameter zeros = 4'b0000;
    
    Binary_BCD_Converter L1(sw, ones, tens, hundreds);
    four_one_Mux L2(ones, tens, hundreds, thousands,  counter_out, mux_out);
    Slow_Clock L3(clk, clk_out); 
    two_bit_counter L4(clk_out, counter_out);
    Decoder L5(counter_out, an);
    BCD_Seven_Segment L6(mux_out, seg);
endmodule
