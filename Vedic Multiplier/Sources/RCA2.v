`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2023 09:53:44
// Design Name: 
// Module Name: RCA2
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


module RCA2(
    input [11:0] a,
    input [11:0] b,
    output [11:0] r,
    output c
    );
    wire c0; 
    RAC r1(a[5:0], b[5:0],0, r[5:0],c0);
    RAC r2(a[11:6], b[11:6],c0, r[11:6],c);
endmodule
