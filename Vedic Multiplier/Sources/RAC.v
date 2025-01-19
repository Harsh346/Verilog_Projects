`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2023 00:53:40
// Design Name: 
// Module Name: RAC
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


module RAC(
    input [5:0] a,
    input [5:0] b,
    input Cin,
    output [5:0] r,
    output c
    );
    wire c0; wire c1; wire c2; wire c3; wire c4; wire c5;
    assign c0=0;
    full_adder fa1(a[0],b[0],Cin,r[0],c1);
    full_adder fa2(a[1],b[1],c1,r[1],c2);
    full_adder fa3(a[2],b[2],c2,r[2],c3);
    full_adder fa4(a[3],b[3],c3,r[3],c4);
    full_adder fa5(a[4],b[4],c4,r[4],c5);
    full_adder fa6(a[5],b[5],c5,r[5],c);
endmodule
