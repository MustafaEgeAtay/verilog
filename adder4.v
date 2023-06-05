`timescale 1ns / 1ps

//carry_select_adder
module adder4(   
input [63:0] a_i,b_i,
output [64:0] sum_o 
);


reg cin = 1'b0;
wire cout;
assign sum_o[64]=1'd0;
    
wire [63:0] temp0,temp1,carry0,carry1;

//for carry 0
fulladder f0(a_i[0],b_i[0],1'b0,temp0[0],carry0[0]);
genvar i;
generate 
for (i=1; i<64; i=i+1) begin
fulladder k1(a_i[i],b_i[i],carry0[i-1],temp0[i],carry0[i]);
end
endgenerate

//for carry 1
fulladder f1(a_i[0],b_i[0],1'b1,temp1[0],carry1[0]);
genvar j;
generate 
for (j=1; j<64; j=j+1) begin
fulladder k2(b_i[j],a_i[j],carry1[j-1],temp1[j],carry1[j]);
end
endgenerate
//mux for carry
multiplexer2 mux_carry(carry0[63],carry1[63],cin,cout);
//mux's for sum
genvar z;
generate
for (z=0; z<64; z=z+1) begin
multiplexer2 s(temp0[z],temp1[z],cin,sum_o[z]);
end
    endgenerate
        endmodule 

module multiplexer2
        (   input i0,i1,sel,
            output reg bitout
            );
always@(i0,i1,sel)
begin
if(sel == 0)
    bitout = i0;
else
    bitout = i1; 
end
endmodule


module fulladder
        (   input a,b,cin,
            output sum,carry
            );
assign sum = a ^ b ^ cin;
assign carry = (a & b) | (cin & b) | (a & cin);
endmodule
