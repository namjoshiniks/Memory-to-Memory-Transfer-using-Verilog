module Subtracter_tb();

wire [7:0] SUBOut;
reg [7:0] DOut1,DOut2;
reg clk;

Subtracter MUT(SUBOut,DOut2,DOut1);

always
#5 clk = ~clk;

initial begin
 clk = 1'b1;
 DOut2 = 8'b10000000;
 DOut1 = 8'b10000000;

 @(posedge clk)
 begin
   DOut2 = 8'b10001001;
   DOut1 = 8'b00000011;
 end

@(posedge clk)
 begin
   DOut2 = 8'b11100011;
   DOut1 = 8'b11111100;
 end

@(posedge clk)
 begin
   DOut2 = 8'b00011011;
   DOut1 = 8'b01010011;
 end

@(posedge clk)
 begin
   DOut2 = 8'b11100011;
   DOut1 = 8'b01010011;
 end


end
endmodule

