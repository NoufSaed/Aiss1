`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2024 11:50:48
// Design Name: 
// Module Name: Mux
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


module Mux #( 
    parameter WIDTH1 = 3,
    parameter WIDTH2 = 8)
(
 input logic [WIDTH1-1:0] A ,
 input logic [WIDTH2-1:0] B,
 input logic S,
 output logic [((WIDTH1 > WIDTH2) ? WIDTH1 : WIDTH2)-1:0] Z
    );
    
    localparam MAX_WIDTH = (WIDTH1 > WIDTH2) ? WIDTH1: WIDTH2;
    logic [MAX_WIDTH-1:0] A_out ,B_out;
    
    assign A_out  ={{(MAX_WIDTH  -WIDTH1){1'b0}},A};
    assign B_out  ={{(MAX_WIDTH  -WIDTH2){1'b0}},B};
        always_comb 
    begin 
    if (S)
    Z =A_out;
    else 
    Z=B_out; 
    end
endmodule
