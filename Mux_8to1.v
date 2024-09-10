`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2024 01:12:43 PM
// Design Name: 
// Module Name: Mux_8to1
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


module Mux_8to1(o, a, b, c, d, e, f, g, h, s0, s1, s2);
input a, b, c, d, e, f, g, h, s0, s1, s2;
output o;
assign o = (~s0 & ~s1 & ~s2 & a) | (~s0 & ~s1 & s2 & b) | (~s0 & s1 & ~s2 & c) 
| (~s0 & s1 & s2 & d) | (s0 & ~s1 & ~s2 & e) | (s0 & ~s1 & s2 & f) | (s0 & s1 & ~s2 & g) 
| (s0 & s1 & s2 & h);
endmodule
