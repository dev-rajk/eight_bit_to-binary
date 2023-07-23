`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/22/2023 12:04:37 AM
// Design Name: 
// Module Name: Decoder
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


module Decoder(
    input [1:0] en,
    output reg [3:0] an
    );
    
    always @(en)
    begin
    case(en)
    0: an = 4'b1110;
    1: an = 4'b1101;
    2: an = 4'b1011;
    3: an = 4'b1111;
    endcase
    end
endmodule
