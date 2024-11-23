`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2024 12:00:16
// Design Name: 
// Module Name: Mux_tb
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

module Mux_tb;

  localparam WIDTH1 = 3;
  localparam WIDTH2 = 8;

  logic [WIDTH1-1:0] A;
  logic [WIDTH2-1:0] B;
  logic S;
  logic [((WIDTH1 > WIDTH2) ? WIDTH1 : WIDTH2)-1:0] Z;

  Mux #(
    .WIDTH1(WIDTH1),
    .WIDTH2(WIDTH2)
  ) uut (
    .A(A),
    .B(B),
    .S(S),
    .Z(Z)
  );

  initial begin
    A = 3'b101;
    B = 8'b11001100;
    S = 1'b1;
    #10;

    S = 1'b0;
    #10;

    A = 3'b011;
    B = 8'b10101010;
    S = 1'b1;
    #10;

    S = 1'b0;
    #10;

    $stop;
  end

endmodule
