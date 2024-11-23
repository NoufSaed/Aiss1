`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2024 13:03:23
// Design Name: 
// Module Name: ALU
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


module ALU #(parameter WIDTH=8)(
input logic a,
input logic b,
input logic cin,
output logic sum,
output logic carry
    );
    logic B;
  always_comb@(b,cin)
  begin 
  B=b^cin;
  end
   full_Adder F (
   .a(a),
   .b(B),
   .cin(cin),
   .sum(sum),
   .carry(carry)
   
   );
    
  
endmodule
