`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2024 02:27:23 PM
// Design Name: 
// Module Name: Mux_4to1_behavioral
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


module Mux_4to1_behavioral(o, a, b, c, d, s);
input [1:0] a, b, c, d, s;
output reg [1:0] o;
 
always @(*) // s or i // s or a or b or c or d
begin
   case (s)
      2'b00 : o = a;
      2'b01 : o = b;
      2'b10 : o = c;
      2'b11 : o = d;
      default : o = 1'bx;
   endcase
end
endmodule
