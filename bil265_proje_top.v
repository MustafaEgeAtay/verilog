`timescale 1ns / 1ps

module bil265_proje_top(
input clk, // clock
input rst_n, // active-low reset
input btnl_i, // Left button
input btnu_i, // Upper button
input btnr_i, // Right button
input btnd_i, // Down button
input rx_i, // UART receive
output reg tx_o // UART transmit
//output reg [87:0]deneme --> tb'de toplam sonucumuzu ana modülden alýp almadýðýmýzý görmek için yaptýk.
);

reg rx;
reg [151:0]paket1; //PC’den FPGA kartýna gönderilecek olan paket içeriði 
reg [87:0]paket2; //FPGA kartýndan PC'ye toplama sonucunu gönderecek olan paket içeriði 
reg [63:0]sayi1,sayi2;
reg [15:0]baslik1;
reg [15:0]baslik2;
reg [7:0]checksum1;
reg [7:0]checksum2[0:3];
reg [65:0]temp_toplam;
reg [65:0]temp_toplam2[0:3];
reg [64:0]sonuc1,sonuc2,sonuc3,sonuc4; 
reg btnl,btnu,btnr,btnd;

wire [63:0]sonuc1w,sonuc2w,sonuc3w,sonuc4w;

initial begin //SAYI GÝRÝÞLERÝNÝ YAPACAÐIMIZ KISIM
paket1[79:16] = 64'd12;  // SAYI1
paket1[143:80] = 64'd13; // SAYI2
end

adder1 a(sayi1,sayi2,sonuc1w);
adder2 b(sayi1,sayi2,sonuc2w);
adder3 c(sayi1,sayi2,sonuc3w);
adder4 d(sayi1,sayi2,sonuc4w);

always @* begin 

sonuc1 = sonuc1w;
sonuc2 = sonuc2w;
sonuc3 = sonuc3w;
sonuc4 = sonuc4w;

paket1[15:0] = 16'hBACD; //PC'den FPGA kartýna gönderilecek olan paket baþlýðý
baslik1 = paket1[15:0];
sayi1 = paket1[79:16];
sayi2 = paket1[143:80];

paket2[15:0] = 16'hBAFD; // FPGA kartýndan PC'ye toplama sonucunu gönderecek olan paket baþlýðý
baslik2 = paket2[15:0];

checksum1 = paket1[151:144];
temp_toplam = baslik1 + sayi1 + sayi2;
checksum1 = temp_toplam % 256;

temp_toplam2[0] = baslik2 + sonuc1;
temp_toplam2[1] = baslik2 + sonuc2;
temp_toplam2[2] = baslik2 + sonuc3;
temp_toplam2[3] = baslik2 + sonuc4;

checksum2[0] = temp_toplam2[0] % 256;
checksum2[1] = temp_toplam2[1] % 256;
checksum2[2] = temp_toplam2[2] % 256;
checksum2[3] = temp_toplam2[3] % 256;

end

always @(posedge clk) begin
    if (rst_n==1'b0) begin
        rx <= 1'b0;
        tx_o <= 1'b0;
        btnl <= 1'b0;
        btnu <= 1'b0;
        btnr <= 1'b0;
        btnd <= 1'b0;
        sayi1 <= {64{1'b0}};
        sayi2 <= {64{1'b0}};
        sonuc1 <= {65{1'b0}};
        sonuc2 <= {65{1'b0}};
        sonuc3 <= {65{1'b0}};
        sonuc4 <= {65{1'b0}};
    end
    else begin
        btnl <= btnl_i;
        btnu <= btnu_i;
        btnr <= btnr_i;
        btnd <= btnd_i;
        rx <= rx_i;
   //pc'den fpga'e giden paketin baþlýðý bu ise,
   //sayý1 ve sayý2 toplam sonuçlarýný btn inputlarýna göre verebiliyoruz.      
     if((baslik1 == 16'hBACD) && (rx == 1'b1)) begin 
        if(btnl == 1'b1)begin
            paket2[15:0] <= baslik2;
            paket2[79:16] <= sonuc1;
            paket2[87:80] <= checksum2[0];
            //deneme <= paket2;
            tx_o <= 1'b1;
        end
        else if (btnu == 1'b1) begin
            paket2[15:0] <= baslik2;
            paket2[79:16] <= sonuc2;
            paket2[87:80] <= checksum2[1];
            //deneme <= paket2;
            tx_o <= 1'b1;
        end
        else if (btnr == 1'b1) begin
            paket2[15:0] <= baslik2;
            paket2[79:16] <= sonuc3;
            paket2[87:80] <= checksum2[2];
            //deneme <= paket2;
            tx_o <= 1'b1;
        end
        else if (btnd == 1'b1) begin
            paket2[15:0] <= baslik2;
            paket2[79:16] <= sonuc4;
            paket2[87:80] <= checksum2[3];
            //deneme <= paket2;
            tx_o <= 1'b1;
        end
     
     
        end
    end
end


endmodule



