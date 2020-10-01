`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/24/2020 01:05:46 PM
// Design Name: 
// Module Name: fulladder_test
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


module fulladder_test();

    reg cin_t;
    reg a_t;
    reg b_t;
    wire cout_t;
    wire s_t;

fulladder dut(
    .ain(a_t),
    .bin(b_t),
    .cin(cin_t),
    .cout(cout_t),
    .sout(s_t)
    );
    
initial begin
cin_t=0;a_t=0;b_t=0;#10
cin_t=0;a_t=0;b_t=1;#10
cin_t=0;a_t=1;b_t=0;#10
cin_t=0;a_t=1;b_t=1;#10
cin_t=1;a_t=0;b_t=0;#10
cin_t=1;a_t=0;b_t=1;#10
cin_t=1;a_t=1;b_t=0;#10
cin_t=1;a_t=1;b_t=1;#10
$finish;
end


endmodule
