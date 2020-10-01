`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abigail Joseph
// 
// Create Date: 10/01/2020 09:15:46 AM
// Design Name: 
// Module Name: addsub
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


module addsub(
    input [1:0] a,
    input [1:0] b,
    input m,
    output c_out,
    output [1:0] sum
    );
    
    wire c1;
    
    fulladder fa0 (
    .a_in(a[0]),
    .b_in(b[0]),
    .c_in(m),
    .c_out(c1),
    .s_out(sum[0])  
    );
    
    fulladder fa1 (
    .a_in(a[1]),
    .b_in(b[1]),
    .c_in(c1),
    .c_out(c_out),
    .s_out(sum[1])  
    );
    
    assign c_out = m ^ c_out;
    
    
endmodule
