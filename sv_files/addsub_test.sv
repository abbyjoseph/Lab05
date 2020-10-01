`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abigail Joseph
// 
// Create Date: 10/01/2020 09:31:09 AM
// Design Name: 
// Module Name: addsub_test
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


module addsub_test();

reg [1:0] a,b;
reg m;
wire [1:0] sum;
wire c_out;

addsub dut(
    .a(a),
    .b(b),
    .m(m),
    .c_out(c_out),
    .sum(sum)
    
    );
    
    
    
initial begin
   m=0; a[1]= 0; a[0]= 0; b[1]= 0; b[0]= 0; #10
   m=0; a[1]= 0; a[0]= 0; b[1]= 0; b[0]= 1; #10
   m=0; a[1]= 0; a[0]= 0; b[1]= 1; b[0]= 0; #10
   m=0; a[1]= 0; a[0]= 0; b[1]= 1; b[0]= 1; #10
   m=0; a[1]= 0; a[0]= 1; b[1]= 0; b[0]= 1; #10
   m=0; a[1]= 1; a[0]= 0; b[1]= 0; b[0]= 1; #10
   m=0; a[1]= 1; a[0]= 0; b[1]= 0; b[0]= 0; #10
   m=1; a[1]= 0; a[0]= 0; b[1]= 0; b[0]= 0; #10
   m=1; a[1]= 0; a[0]= 0; b[1]= 0; b[0]= 1; #10
   m=1; a[1]= 0; a[0]= 0; b[1]= 1; b[0]= 0; #10
   m=1; a[1]= 0; a[0]= 0; b[1]= 1; b[0]= 1; #10
   m=1; a[1]= 0; a[0]= 1; b[1]= 0; b[0]= 1; #10
   m=1; a[1]= 1; a[0]= 0; b[1]= 0; b[0]= 1; #10
   m=1; a[1]= 1; a[0]= 0; b[1]= 0; b[0]= 0; #10
   
  $finish;
  
end
   

endmodule
