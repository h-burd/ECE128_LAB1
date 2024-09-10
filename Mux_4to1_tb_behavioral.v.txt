`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2024 02:59:10 PM
// Design Name: 
// Module Name: Mux_4to1_tb
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
module Mux_4to1_tb;
wire [1:0] o; //output 
reg [1:0] a,b,c,d,s; //input

// Instantiate original module (named DUT {device under test}) 
Mux_4to1_behavioral uut (o,a,b,c,d,s);

initial begin 
    #10 a=2'b10;b=2'b00;c=2'b00;d=2'b00;s=2'b00;
	#10 a=2'b00;b=2'b01;c=2'b00;d=2'b00;s=2'b01;
	#10 a=2'b00;b=2'b00;c=2'b00;d=2'b00;s=2'b10;
	#10 a=2'b00;b=2'b00;c=2'b00;d=2'b11;s=2'b11;

	#10 $stop;

end 
endmodule



