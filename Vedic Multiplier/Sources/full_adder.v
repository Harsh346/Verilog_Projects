`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2023 12:50:35
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input a,
    input b,
    input c,
    output S,
    output Cout
    );
    wire w1; wire w2; wire w3; wire [0:7] R;
    decoder_3x8 d1(a,b,c,R);
    or(S,R[1],R[2],R[4],R[7]);
    or(Cout,R[3],R[5],R[6],R[7]);
endmodule
