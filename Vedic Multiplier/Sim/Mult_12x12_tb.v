`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.04.2023 19:48:20
// Design Name: 
// Module Name: Mult_12x12_tb
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


module Mult_12x12_tb;

        reg [11:0]A; reg [11:0]B;
        wire [23:0] p;
        Mult_12x12 m(A, B, p);
        initial
        begin
        A=12'b101010011100; B=12'b000010001011; #1   
        A=12'b001101101010; B=12'b010111010010; #1    
        A=12'b101011000111; B=12'b111111001100; #1    
        A=12'b001010001100; B=12'b101011001010; #1   
        A=12'b101000100101; B=12'b000110010100; #1   
        A=12'b100101110001; B=12'b110010100010; #1   
        A=12'b111111111111; B=12'b111111111111; #1  
         
        $finish;
        end
endmodule
