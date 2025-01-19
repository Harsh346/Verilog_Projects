`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.04.2023 12:46:04
// Design Name: 
// Module Name: Mult_6x6
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


module Mult_6x6(
    input [5:0] a,
    input [5:0] b,
    output [11:0] r
    );
    wire [5:0] w1; wire [5:0] w2; wire [5:0] w3; wire [5:0] w4; 
    Alt_mult m1(a[2:0], b[2:0], w1);
    Alt_mult m2(a[5:3], b[2:0], w2);
    Alt_mult m3(a[2:0], b[5:3], w3);
    Alt_mult m4(a[5:3], b[5:3], w4);

    wire [5:0]w5; wire c1; wire [5:0]w6; wire [5:0]w7; wire c2; wire [5:0]w8; wire [5:0]w9; wire c3; wire c;
    RAC r1(w2,w3,0,w5,c1);
    assign w6={3'b0, w1[5:3]};
    RAC r2(w5,w6,0,w7,c2);
//    assign w8={3'b0, w7[5:3]};
    or(c,c1,c2);
    assign w8= {2'b0, c, w7[5:3]};
    RAC r3(w4,w8,0,w9,c3);
    assign r = {w9, w7[2:0], w1[2:0]};
    
    
endmodule
