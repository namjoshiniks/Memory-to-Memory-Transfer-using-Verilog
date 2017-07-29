module Mux2_1_tb();

wire [7:0] muxOut;
reg sel;
reg [7:0] a,b;
reg clk;

Mux2_1 MUT(a,b,sel,muxOut);

always
   #5 clk = ~clk;

initial begin
  clk = 1'b1;
  a = 8'b00000001;
  b = 8'b00000010;
  sel = 1;

  @(negedge clk)
  begin
   a = 8'b00001000;
   b = 8'b00000110;
  end

 @(negedge clk)
  begin
   a = 8'b0100000;
   b = 8'b01000110;
  end

@(negedge clk)
  begin
   sel = 0;
  end

@(negedge clk)
  begin
   a = 8'b00010000;
   b = 8'b00100000;
  end

@(negedge clk)
  begin
   a = 8'b00001001;
   b = 8'b00000100;
  end

@(negedge clk)
	  $finish;
end

endmodule


