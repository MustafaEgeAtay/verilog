timescale 1ns / 1ps
//ripple carry adder
module adder1(
	input [63:0]a,
	input [63:0]b,
	output reg [64:0]sout
);
	reg [64:0]cin_next=64'd0;
	always@(*)begin
sout[0] = a[0] ^ b[0] ^ cin_next[0];
cin_next[1] = (a[0] & b[0]) | ((a[0] | b[0]) & cin_next[0]);

sout[1] = a[1] ^ b[1] ^ cin_next[1];
cin_next[2] = (a[1] & b[1]) | ((a[1] | b[1]) & cin_next[1]);

sout[2] = a[2] ^ b[2] ^ cin_next[2];
cin_next[3] = (a[2] & b[2]) | ((a[2] | b[2]) & cin_next[2]);

sout[3] = a[3] ^ b[3] ^ cin_next[3];
cin_next[4] = (a[3] & b[3]) | ((a[3] | b[3]) & cin_next[3]);

sout[4] = a[4] ^ b[4] ^ cin_next[4];
cin_next[5] = (a[4] & b[4]) | ((a[4] | b[4]) & cin_next[4]);

sout[5] = a[5] ^ b[5] ^ cin_next[5];
cin_next[6] = (a[5] & b[5]) | ((a[5] | b[5]) & cin_next[5]);

sout[6] = a[6] ^ b[6] ^ cin_next[6];
cin_next[7] = (a[6] & b[6]) | ((a[6] | b[6]) & cin_next[6]);

sout[7] = a[7] ^ b[7] ^ cin_next[7];
cin_next[8] = (a[7] & b[7]) | ((a[7] | b[7]) & cin_next[7]);

sout[8] = a[8] ^ b[8] ^ cin_next[8];
cin_next[9] = (a[8] & b[8]) | ((a[8] | b[8]) & cin_next[8]);

sout[9] = a[9] ^ b[9] ^ cin_next[9];
cin_next[10] = (a[9] & b[9]) | ((a[9] | b[9]) & cin_next[9]);

sout[10] = a[10] ^ b[10] ^ cin_next[10];
cin_next[11] = (a[10] & b[10]) | ((a[10] | b[10]) & cin_next[10]);

sout[11] = a[11] ^ b[11] ^ cin_next[11];
cin_next[12] = (a[11] & b[11]) | ((a[11] | b[11]) & cin_next[11]);

sout[12] = a[12] ^ b[12] ^ cin_next[12];
cin_next[13] = (a[12] & b[12]) | ((a[12] | b[12]) & cin_next[12]);

sout[13] = a[13] ^ b[13] ^ cin_next[13];
cin_next[14] = (a[13] & b[13]) | ((a[13] | b[13]) & cin_next[13]);

sout[14] = a[14] ^ b[14] ^ cin_next[14];
cin_next[15] = (a[14] & b[14]) | ((a[14] | b[14]) & cin_next[14]);

sout[15] = a[15] ^ b[15] ^ cin_next[15];
cin_next[16] = (a[15] & b[15]) | ((a[15] | b[15]) & cin_next[15]);

sout[16] = a[16] ^ b[16] ^ cin_next[16];
cin_next[17] = (a[16] & b[16]) | ((a[16] | b[16]) & cin_next[16]);

sout[17] = a[17] ^ b[17] ^ cin_next[17];
cin_next[18] = (a[17] & b[17]) | ((a[17] | b[17]) & cin_next[17]);

sout[18] = a[18] ^ b[18] ^ cin_next[18];
cin_next[19] = (a[18] & b[18]) | ((a[18] | b[18]) & cin_next[18]);

sout[19] = a[19] ^ b[19] ^ cin_next[19];
cin_next[20] = (a[19] & b[19]) | ((a[19] | b[19]) & cin_next[19]);

sout[20] = a[20] ^ b[20] ^ cin_next[20];
cin_next[21] = (a[20] & b[20]) | ((a[20] | b[20]) & cin_next[20]);

sout[21] = a[21] ^ b[21] ^ cin_next[21];
cin_next[22] = (a[21] & b[21]) | ((a[21] | b[21]) & cin_next[21]);

sout[22] = a[22] ^ b[22] ^ cin_next[22];
cin_next[23] = (a[22] & b[22]) | ((a[22] | b[22]) & cin_next[22]);

sout[23] = a[23] ^ b[23] ^ cin_next[23];
cin_next[24] = (a[23] & b[23]) | ((a[23] | b[23]) & cin_next[23]);

sout[24] = a[24] ^ b[24] ^ cin_next[24];
cin_next[25] = (a[24] & b[24]) | ((a[24] | b[24]) & cin_next[24]);

sout[25] = a[25] ^ b[25] ^ cin_next[25];
cin_next[26] = (a[25] & b[25]) | ((a[25] | b[25]) & cin_next[25]);

sout[26] = a[26] ^ b[26] ^ cin_next[26];
cin_next[27] = (a[26] & b[26]) | ((a[26] | b[26]) & cin_next[26]);

sout[27] = a[27] ^ b[27] ^ cin_next[27];
cin_next[28] = (a[27] & b[27]) | ((a[27] | b[27]) & cin_next[27]);

sout[28] = a[28] ^ b[28] ^ cin_next[28];
cin_next[29] = (a[28] & b[28]) | ((a[28] | b[28]) & cin_next[28]);

sout[29] = a[29] ^ b[29] ^ cin_next[29];
cin_next[30] = (a[29] & b[29]) | ((a[29] | b[29]) & cin_next[29]);

sout[30] = a[30] ^ b[30] ^ cin_next[30];
cin_next[31] = (a[30] & b[30]) | ((a[30] | b[30]) & cin_next[30]);

sout[31] = a[31] ^ b[31] ^ cin_next[31];
cin_next[32] = (a[31] & b[31]) | ((a[31] | b[31]) & cin_next[31]);

sout[32] = a[32] ^ b[32] ^ cin_next[32];
cin_next[33] = (a[32] & b[32]) | ((a[32] | b[32]) & cin_next[32]);

sout[33] = a[33] ^ b[33] ^ cin_next[33];
cin_next[34] = (a[33] & b[33]) | ((a[33] | b[33]) & cin_next[33]);

sout[34] = a[34] ^ b[34] ^ cin_next[34];
cin_next[35] = (a[34] & b[34]) | ((a[34] | b[34]) & cin_next[34]);

sout[35] = a[35] ^ b[35] ^ cin_next[35];
cin_next[36] = (a[35] & b[35]) | ((a[35] | b[35]) & cin_next[35]);

sout[36] = a[36] ^ b[36] ^ cin_next[36];
cin_next[37] = (a[36] & b[36]) | ((a[36] | b[36]) & cin_next[36]);

sout[37] = a[37] ^ b[37] ^ cin_next[37];
cin_next[38] = (a[37] & b[37]) | ((a[37] | b[37]) & cin_next[37]);

sout[38] = a[38] ^ b[38] ^ cin_next[38];
cin_next[39] = (a[38] & b[38]) | ((a[38] | b[38]) & cin_next[38]);

sout[39] = a[39] ^ b[39] ^ cin_next[39];
cin_next[40] = (a[39] & b[39]) | ((a[39] | b[39]) & cin_next[39]);

sout[40] = a[40] ^ b[40] ^ cin_next[40];
cin_next[41] = (a[40] & b[40]) | ((a[40] | b[40]) & cin_next[40]);

sout[41] = a[41] ^ b[41] ^ cin_next[41];
cin_next[42] = (a[41] & b[41]) | ((a[41] | b[41]) & cin_next[41]);

sout[42] = a[42] ^ b[42] ^ cin_next[42];
cin_next[43] = (a[42] & b[42]) | ((a[42] | b[42]) & cin_next[42]);

sout[43] = a[43] ^ b[43] ^ cin_next[43];
cin_next[44] = (a[43] & b[43]) | ((a[43] | b[43]) & cin_next[43]);

sout[44] = a[44] ^ b[44] ^ cin_next[44];
cin_next[45] = (a[44] & b[44]) | ((a[44] | b[44]) & cin_next[44]);

sout[45] = a[45] ^ b[45] ^ cin_next[45];
cin_next[46] = (a[45] & b[45]) | ((a[45] | b[45]) & cin_next[45]);

sout[46] = a[46] ^ b[46] ^ cin_next[46];
cin_next[47] = (a[46] & b[46]) | ((a[46] | b[46]) & cin_next[46]);

sout[47] = a[47] ^ b[47] ^ cin_next[47];
cin_next[48] = (a[47] & b[47]) | ((a[47] | b[47]) & cin_next[47]);

sout[48] = a[48] ^ b[48] ^ cin_next[48];
cin_next[49] = (a[48] & b[48]) | ((a[48] | b[48]) & cin_next[48]);

sout[49] = a[49] ^ b[49] ^ cin_next[49];
cin_next[50] = (a[49] & b[49]) | ((a[49] | b[49]) & cin_next[49]);

sout[50] = a[50] ^ b[50] ^ cin_next[50];
cin_next[51] = (a[50] & b[50]) | ((a[50] | b[50]) & cin_next[50]);

sout[51] = a[51] ^ b[51] ^ cin_next[51];
cin_next[52] = (a[51] & b[51]) | ((a[51] | b[51]) & cin_next[51]);

sout[52] = a[52] ^ b[52] ^ cin_next[52];
cin_next[53] = (a[52] & b[52]) | ((a[52] | b[52]) & cin_next[52]);

sout[53] = a[53] ^ b[53] ^ cin_next[53];
cin_next[54] = (a[53] & b[53]) | ((a[53] | b[53]) & cin_next[53]);

sout[54] = a[54] ^ b[54] ^ cin_next[54];
cin_next[55] = (a[54] & b[54]) | ((a[54] | b[54]) & cin_next[54]);

sout[55] = a[55] ^ b[55] ^ cin_next[55];
cin_next[56] = (a[55] & b[55]) | ((a[55] | b[55]) & cin_next[55]);

sout[56] = a[56] ^ b[56] ^ cin_next[56];
cin_next[57] = (a[56] & b[56]) | ((a[56] | b[56]) & cin_next[56]);

sout[57] = a[57] ^ b[57] ^ cin_next[57];
cin_next[58] = (a[57] & b[57]) | ((a[57] | b[57]) & cin_next[57]);

sout[58] = a[58] ^ b[58] ^ cin_next[58];
cin_next[59] = (a[58] & b[58]) | ((a[58] | b[58]) & cin_next[58]);

sout[59] = a[59] ^ b[59] ^ cin_next[59];
cin_next[60] = (a[59] & b[59]) | ((a[59] | b[59]) & cin_next[59]);

sout[60] = a[60] ^ b[60] ^ cin_next[60];
cin_next[61] = (a[60] & b[60]) | ((a[60] | b[60]) & cin_next[60]);

sout[61] = a[61] ^ b[61] ^ cin_next[61];
cin_next[62] = (a[61] & b[61]) | ((a[61] | b[61]) & cin_next[61]);

sout[62] = a[62] ^ b[62] ^ cin_next[62];
cin_next[63] = (a[62] & b[62]) | ((a[62] | b[62]) & cin_next[62]);

sout[63] = a[63] ^ b[63] ^ cin_next[63];
sout[64] = (a[63] & b[63]) | ((a[63] | b[63]) & cin_next[63]);

end
endmodule
