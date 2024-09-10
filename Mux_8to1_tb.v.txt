`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2024 03:23:38 PM
// Design Name: 
// Module Name: Mux_8to1_tb
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

`timescale 1ns/1ps
module Mux_8to1_tb;
wire o; //output 
reg  a, b, c, d, e, f, g, h, s0, s1, s2; //input
 
// Instantiate original module (named DUT {device under test}) 
Mux_8to1 uut (o, a, b, c, d, e, f, g, h, s0, s1, s2);

initial begin 
    #10 a=1'b1;b=1'b0;c=1'b0;d=1'b1;e=1'b0;f=1'b1;g=1'b1;h=1'b0;s0=0'b0;s1=1'b0;s2=1'b0;
    #10 a=1'b1;b=1'b0;c=1'b0;d=1'b1;e=1'b0;f=1'b1;g=1'b1;h=1'b0;s0=0'b0;s1=1'b0;s2=1'b1;
    #10 a=1'b1;b=1'b0;c=1'b0;d=1'b1;e=1'b0;f=1'b1;g=1'b1;h=1'b0;s0=0'b0;s1=1'b1;s2=1'b0;
    #10 a=1'b1;b=1'b0;c=1'b0;d=1'b1;e=1'b0;f=1'b1;g=1'b1;h=1'b0;s0=0'b0;s1=1'b1;s2=1'b1;
    
    #10 a=1'b1;b=1'b0;c=1'b0;d=1'b1;e=1'b0;f=1'b1;g=1'b1;h=1'b0;s0=1'b0;s1=1'b0;s2=1'b0;
    #10 a=1'b1;b=1'b0;c=1'b0;d=1'b1;e=1'b0;f=1'b1;g=1'b1;h=1'b0;s0=1'b0;s1=1'b0;s2=1'b1;
    #10 a=1'b1;b=1'b0;c=1'b0;d=1'b1;e=1'b0;f=1'b1;g=1'b1;h=1'b0;s0=1'b0;s1=1'b1;s2=1'b0;
    #10 a=1'b1;b=1'b0;c=1'b0;d=1'b1;e=1'b0;f=1'b1;g=1'b1;h=1'b0;s0=1'b0;s1=1'b1;s2=1'b1;
	#10 $stop;

end 
endmodule

