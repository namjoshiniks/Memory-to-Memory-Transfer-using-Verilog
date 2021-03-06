module MemoryA_tb();

reg [2:0] AddrA;
reg WEA;
reg [7:0] DataInA;
reg clk;
wire [7:0] DataOut;

MemoryA MUT(AddrA,WEA,DataInA,DataOut);

always
#5 clk = ~clk;

initial begin
//DataInA = 8'b00100000; 
 clk = 1'b0;
// AddrA = 3'b000;
// WEA = 1'b1;
 

@(posedge clk)
begin
WEA = 1'b1;
  DataInA = 8'b00100011;
  AddrA = 3'b000;
  
end

@(posedge clk)
begin
  DataInA = 8'b10000111;
  AddrA = 3'b001;
  
end

@(posedge clk)
begin
  DataInA = 8'b10110111;
  AddrA = 3'b010;
  
end

@(posedge clk)
begin
  DataInA = 8'b11010111;
  AddrA = 3'b011;
  
end

@(posedge clk)
begin
  DataInA = 8'b00010001;
  AddrA = 3'b100;
  
end

@(posedge clk)
begin
  DataInA = 8'b11000001;
  AddrA = 3'b101;
  
end

@(posedge clk)
begin
  DataInA = 8'b10000101;
  AddrA = 3'b110;
  
end

@(posedge clk)
begin
  DataInA = 8'b00000111;
  AddrA = 3'b111;
  
end

@(posedge clk)
begin
  WEA = 1'b0;
  AddrA = 3'b000;
end

@(posedge clk)
begin
  AddrA = 3'b001;
end

@(posedge clk)
begin
  AddrA = 3'b010;
end

@(posedge clk)
begin
  AddrA = 3'b011;
end

@(posedge clk)
begin
  AddrA = 3'b100;
end

@(posedge clk)
begin
  AddrA = 3'b101;
end

@(posedge clk)
begin
  AddrA = 3'b110;
end

@(posedge clk)
begin
  AddrA = 3'b111;
end
end



endmodule
