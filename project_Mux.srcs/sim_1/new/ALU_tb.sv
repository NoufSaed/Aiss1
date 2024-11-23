`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2024 14:51:30
// Design Name: 
// Module Name: ALU_tb
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


`timescale 1ns/1ps

module ALU_tb;

  logic a, b, cin;
  logic sum, carry;

  ALU #(.WIDTH(8)) A
  
  (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .carry(carry)
  );

  initial begin
    a = 0; b = 0; cin = 0;
    #10;
    a = 1; b = 0; cin = 0;
    #10;
    a = 0; b = 1; cin = 0;
    #10;
    a = 1; b = 1; cin = 0;
    #10;
    a = 1; b = 1; cin = 1;
    #10;
    $stop;
  end

endmodule
