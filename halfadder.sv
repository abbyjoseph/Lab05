`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abigail Joseph
// 
// Create Date: 10/01/2020 08:20:23 AM
// Design Name: 
// Module Name: halfadder
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


module halfadder(
    input a,
    input b,
    output c,
    output s
    );
    wire c, s;
    
   assign c= a & b;
   assign s= a ^ b;
    
    
endmodule
