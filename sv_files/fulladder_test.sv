`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abigail Joseph
// 
// Create Date: 10/01/2020 08:53:37 AM
// Design Name: 
// Module Name: fulladder_test
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


module fulladder_test();

reg c_in, a_in, b_in;
wire c_out, s_out;

fulladder dut(
    .a_in(a_in),
    .b_in(b_in),
    .c_in(c_in),
    .c_out(c_out),
    .s_out(s_out)  
    );
    
    initial begin
        c_in=0; a_in=0; b_in=0; #10;
        c_in=0; a_in=0; b_in=1; #10;
        c_in=0; a_in=1; b_in=0; #10;
        c_in=0; a_in=1; b_in=1; #10;
        c_in=1; a_in=0; b_in=0; #10;
        c_in=1; a_in=0; b_in=1; #10;
        c_in=1; a_in=1; b_in=0; #10;
        c_in=1; a_in=1; b_in=1; #10;
    
        $finish;
    end





endmodule
