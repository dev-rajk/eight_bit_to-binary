`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/21/2023 11:15:40 PM
// Design Name: 
// Module Name: Led_Blink
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


module Slow_Clock(
    input clk_in, //input clock at 1mhz
    output reg clk_out //output clock at 100hz
    );
    reg [20:0] count = 0;
    
    
    always @(posedge clk_in)
    begin 
    count <= count +1;
    if (count == 500000)
    begin
    count <= 0;
    clk_out = ~clk_out;
    end 
    end
    
endmodule
