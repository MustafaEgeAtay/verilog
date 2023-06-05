`timescale 1ns / 1ps

//carry lookahead adder
module adder2(
input [63:0]a_i,
input [63:0]b_i,
output [64:0]sum_o
);
reg [64:0]carry=65'd0;
reg [63:0]sum,g,p;

integer i;

always@(*)begin
            g[63:0] = a_i[63:0] & b_i[63:0];
            p[63:0] = a_i[63:0] ^ b_i[63:0];
         
 for (i=0;i<64;i=i+1)begin
 carry[i+1] = g[i] | p[i] & carry[i] ;
 end
 sum[63:0]  = carry[63:0] ^ p[63:0];
 end

assign sum_o = {carry[64],sum[63:0]};

endmodule
