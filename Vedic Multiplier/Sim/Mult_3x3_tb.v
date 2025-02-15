`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2023 12:06:13
// Design Name: 
// Module Name: Mult_3x3_tb
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


module Mult_3x3_tb;
    reg [2:0]A; reg [2:0]B;
    wire [5:0] p;
    Alt_mult m_3x3(A, B, p);
    initial
    begin
    A=3'b000; B=3'b000; #1
    A=3'b001; B=3'b000; #1  A=3'b001; B=3'b001; #1  A=3'b001; B=3'b010; #1  A=3'b001; B=3'b011; #1  A=3'b001; B=3'b100; #1  A=3'b001; B=3'b101; #1  A=3'b001; B=3'b110; #1  A=3'b001; B=3'b111; #1
    A=3'b010; B=3'b000; #1  A=3'b010; B=3'b001; #1  A=3'b010; B=3'b010; #1  A=3'b010; B=3'b011; #1  A=3'b010; B=3'b100; #1  A=3'b010; B=3'b101; #1  A=3'b010; B=3'b110; #1  A=3'b010; B=3'b111; #1
    A=3'b011; B=3'b000; #1  A=3'b011; B=3'b001; #1  A=3'b011; B=3'b010; #1  A=3'b011; B=3'b011; #1  A=3'b011; B=3'b100; #1  A=3'b011; B=3'b101; #1  A=3'b011; B=3'b110; #1  A=3'b011; B=3'b111; #1
    A=3'b100; B=3'b000; #1  A=3'b100; B=3'b001; #1  A=3'b100; B=3'b010; #1  A=3'b100; B=3'b011; #1  A=3'b100; B=3'b100; #1  A=3'b100; B=3'b101; #1  A=3'b100; B=3'b110; #1  A=3'b100; B=3'b111; #1
    A=3'b101; B=3'b000; #1  A=3'b101; B=3'b001; #1  A=3'b101; B=3'b010; #1  A=3'b101; B=3'b011; #1  A=3'b101; B=3'b100; #1  A=3'b101; B=3'b101; #1  A=3'b101; B=3'b110; #1  A=3'b101; B=3'b111; #1
    A=3'b110; B=3'b000; #1  A=3'b110; B=3'b001; #1  A=3'b110; B=3'b010; #1  A=3'b110; B=3'b011; #1  A=3'b110; B=3'b100; #1  A=3'b110; B=3'b101; #1  A=3'b110; B=3'b110; #1  A=3'b110; B=3'b111; #1
    A=3'b111; B=3'b000; #1  A=3'b111; B=3'b001; #1  A=3'b111; B=3'b010; #1  A=3'b111; B=3'b011; #1  A=3'b111; B=3'b100; #1  A=3'b111; B=3'b101; #1  A=3'b111; B=3'b110; #1  A=3'b111; B=3'b111; #1
    
        
    $finish;
    end
endmodule
