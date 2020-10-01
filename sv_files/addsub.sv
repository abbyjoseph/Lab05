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
    input [1:0] a,b,
    input m,
    output c_out,
    output [1:0] sum
    );
    
    wire c1, c2;
    wire [1:0] b_i;
    
    assign b_i[0] = b[0] ^ m;
    assign b_i[1] = b[1] ^ m;
    
    
    fulladder fa0(
    .a_in(a[0]),
    .b_in(b_i[0]),
    .c_in(m),
    .c_out(c1),
    .s_out(sum[0])  
    );
    
    fulladder fa1(
    .a_in(a[1]),
    .b_in(b_i[1]),
    .c_in(c1),
    .c_out(c2),
    .s_out(sum[1])  
    );
    
    assign c_out = m ^ c2;
    
    
endmodule
