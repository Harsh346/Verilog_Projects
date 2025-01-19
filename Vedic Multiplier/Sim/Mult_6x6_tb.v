`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.04.2023 19:50:32
// Design Name: 
// Module Name: Mult_6x6_tb
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


module Mult_6x6_tb;

    reg [5:0]A; reg [5:0]B;
    wire [11:0] p;
    Mult_6x6 m(A, B, p);
    initial
    begin
    A=6'b011100; B=6'b001011; #1   
    A=6'b101010; B=6'b010010; #1    
    A=6'b000111; B=6'b001100; #1    
    A=6'b001100; B=6'b001010; #1   
    A=6'b100101; B=6'b010100; #1   
    A=6'b110001; B=6'b100010; #1   
    A=6'b100101; B=6'b011000; #1  
     
    $finish;
    end
endmodule
