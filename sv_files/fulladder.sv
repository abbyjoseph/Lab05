`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abigail Joseph
// 
// Create Date: 10/01/2020 08:46:14 AM
// Design Name: 
// Module Name: fulladder
// Project Name: Lab 5
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


module fulladder(
    input a_in,
    input b_in,
    input c_in,
    output c_out,
    output s_out
    );
    wire c1, c2, s1;
    
    halfadder ha0(
        .a(a_in),
        .b(b_in),
        .c(c1),
        .s(s1)   
        );
        
    halfadder ha1(
        .a(s1),
        .b(c_in),
        .c(c2),
        .s(s_out)
        );
        
        
    assign c_out = c1 | c2;
    
 
    
endmodule
