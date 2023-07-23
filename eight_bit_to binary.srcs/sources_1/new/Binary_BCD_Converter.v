`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/21/2023 10:44:48 PM
// Design Name: 
// Module Name: Binary_BCD_Converter
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


module Binary_BCD_Converter(
    input [7:0] A,
    output [3:0] ones,
    output [3:0] tens,
    output [3:0] hundreds
    );
    wire[3:0] c1, c2, c3, c4, c5, c6, c7; //declaring the data lines coming out
    wire[3:0] d1, d2, d3, d4, d5, d6, d7; 
    
    //block diagram
    assign d1 = {1'b0, A[7:5]};
    assign d2 = {c1[2:0], A[4]};
    assign d3 = {c2[2:0], A[3]};
    assign d4 = {c3[2:0], A[2]};
    assign d5 = {c4[2:0], A[1]};
    assign d6 = {1'b0, c1[3], c2[3], c3[3]};
    assign d7 = {c6[2:0], c4[3]};
    
    //use shift add 3 algo
    
    Shift_Add3_algorithm U0(d1, c1);//1
    Shift_Add3_algorithm U1(d2, c2);//2
    Shift_Add3_algorithm U2(d3, c3);//3
    Shift_Add3_algorithm U3(d4, c4);//4
    Shift_Add3_algorithm U4(d5, c5);//5
    Shift_Add3_algorithm U5(d6, c6);//6
    Shift_Add3_algorithm U6(d7, c7);//7
    
    //units tens and hundreds 
    assign ones = {c5[2:0], A[0]};
    assign tens  = {c7[2:0], c5[3]};
    assign hundreds = {0,0,c6[3], c7[3]};
    
    
endmodule
