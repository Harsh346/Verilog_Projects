`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.04.2023 19:52:34
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb;
    reg a; reg b; reg c;
    wire S; wire Cout;
    full_adder fa(a,b,c,S,Cout);
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
