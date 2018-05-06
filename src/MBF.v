`timescale 1ns/10ps
module MBF(clk, reset, y_valid, z_valid, y, z);
input              clk;
input              reset;
output             y_valid;
output             z_valid;
output      [7:0]  y;
output      [7:0]  z;

wire signed [7:0]  data;
wire        [7:0]  _data;
reg         [9:0]  addr;
reg                reset_1;
reg                reset_2;
reg                zero;

rom_1024x4_t13 rom0(
   .Q   (       _data[3:0]),
   .CLK (              clk),
   .CEN (             1'b0),
   .A   ({addr[8:0], 1'b0})
);

rom_1024x4_t13 rom1(
   .Q   (       _data[7:4]),
   .CLK (              clk),
   .CEN (             1'b0),
   .A   ({addr[8:0], 1'b1})
);

always @(negedge clk) reset_1 <= reset;

always @(posedge clk) begin
  if (reset_1) begin
    reset_2 <= 1'b1;
  end
  else begin
    reset_2 <= reset_1;
  end
end

always @(posedge clk) begin
  if (reset_1) begin
    addr <= 10'b0;
  end
  else begin
    addr <= addr + 10'b1;
  end
end

always @(posedge clk) begin
  zero <= addr[9];
end

assign data = zero ? 0 : _data;

parameter signed [9:0] h_0 = 10'b0000000001,
                       h_1 = 10'b0000000010,
                       h_2 = 10'b0000000100,
                       h_3 = 10'b0000001100,
                       h_4 = 10'b0000011000,
                       h_5 = 10'b0000101000,
                       h_6 = 10'b0001010000,
                       h_7 = 10'b0100000000;

wire      [16:0] mulitply0;
wire      [16:0] mulitply1;
wire      [16:0] mulitply2;
wire      [16:0] mulitply3;
wire      [16:0] mulitply4;
wire      [16:0] mulitply5;
wire      [16:0] mulitply6;
wire      [16:0] mulitply7;
reg       [16:0] accum_lpf [0:15];
reg       [16:0] accum_hpf [0:15];

assign mulitply0 = data * h_0;
assign mulitply1 = data * h_1;
assign mulitply2 = data * h_2;
assign mulitply3 = data * h_3;
assign mulitply4 = data * h_4;
assign mulitply5 = data * h_5;
assign mulitply6 = data * h_6;
assign mulitply7 = data * h_7;

integer i;

always @(posedge clk) begin
  if (reset_2) begin
    for (i = 0; i < 16; i = i + 1) begin
      accum_lpf[i] <= 17'b0;
    end
  end
  else begin
    accum_lpf[ 0] <=               - mulitply0;
    accum_lpf[ 1] <= accum_lpf[ 0] - mulitply1;
    accum_lpf[ 2] <= accum_lpf[ 1] + mulitply2;
    accum_lpf[ 3] <= accum_lpf[ 2] + mulitply3;
    accum_lpf[ 4] <= accum_lpf[ 3] - mulitply4;
    accum_lpf[ 5] <= accum_lpf[ 4] - mulitply5;
    accum_lpf[ 6] <= accum_lpf[ 5] + mulitply6;
    accum_lpf[ 7] <= accum_lpf[ 6] + mulitply7;
    accum_lpf[ 8] <= accum_lpf[ 7] + mulitply7;
    accum_lpf[ 9] <= accum_lpf[ 8] + mulitply6;
    accum_lpf[10] <= accum_lpf[ 9] - mulitply5;
    accum_lpf[11] <= accum_lpf[10] - mulitply4;
    accum_lpf[12] <= accum_lpf[11] + mulitply3;
    accum_lpf[13] <= accum_lpf[12] + mulitply2;
    accum_lpf[14] <= accum_lpf[13] - mulitply1;
    accum_lpf[15] <= accum_lpf[14] - mulitply0;
  end
end

always @(posedge clk) begin
  if (reset_2) begin
    for (i = 0; i < 16; i = i + 1) begin
      accum_hpf[i] <= 17'b0;
    end
  end
  else begin
    accum_hpf[ 0] <=               + mulitply0;
    accum_hpf[ 1] <= accum_hpf[ 0] - mulitply1;
    accum_hpf[ 2] <= accum_hpf[ 1] - mulitply2;
    accum_hpf[ 3] <= accum_hpf[ 2] + mulitply3;
    accum_hpf[ 4] <= accum_hpf[ 3] + mulitply4;
    accum_hpf[ 5] <= accum_hpf[ 4] - mulitply5;
    accum_hpf[ 6] <= accum_hpf[ 5] - mulitply6;
    accum_hpf[ 7] <= accum_hpf[ 6] + mulitply7;
    accum_hpf[ 8] <= accum_hpf[ 7] - mulitply7;
    accum_hpf[ 9] <= accum_hpf[ 8] + mulitply6;
    accum_hpf[10] <= accum_hpf[ 9] + mulitply5;
    accum_hpf[11] <= accum_hpf[10] - mulitply4;
    accum_hpf[12] <= accum_hpf[11] - mulitply3;
    accum_hpf[13] <= accum_hpf[12] + mulitply2;
    accum_hpf[14] <= accum_hpf[13] + mulitply1;
    accum_hpf[15] <= accum_hpf[14] - mulitply0;
  end
end

assign y = accum_lpf[15][16:9] + accum_lpf[15][8];
assign z = accum_hpf[15][16:9] + accum_hpf[15][8];

reg             y_valid;
reg             z_valid;

always @(posedge clk) begin
  if (reset_1) begin
    y_valid <= 1'b0; 
    z_valid <= 1'b0; 
  end
  else if (addr[0]) begin
    y_valid <= 1'b1; 
    z_valid <= 1'b1; 
  end
end


endmodule
