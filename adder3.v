`timescale 1ns / 1ps

//behavioral adder
module adder3(
input [63:0] a_i,
input [63:0] b_i,
output reg [64:0]sum_o // taþma durumunu dikkate almadým.
    );

initial begin
sum_o[64] = 1'b0;
end    
    
always@* begin
        sum_o = a_i + b_i;
    end
        
endmodule

