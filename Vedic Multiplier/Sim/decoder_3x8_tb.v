`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.04.2023 19:54:56
// Design Name: 
// Module Name: decoder_3x8_tb
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


module decoder_3x8_tb;
    
    reg a; reg b; reg c;
    wire [0:7] p;
    decoder_3x8 de(a,b,c,p);
    initial
    begin
    a=0; b=0; c=0; #1
    a=0; b=0; c=1; #1
    a=0; b=1; c=0; #1
    a=0; b=1; c=1; #1
    a=1; b=0; c=0; #1
    a=1; b=0; c=1; #1
    a=1; b=1; c=0; #1
    a=1; b=1; c=1; #1
    $finish;
    end
endmodule
