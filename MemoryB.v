module MemoryB(clk,AddrB,WEB,DataInB,DataOut);

input [1:0] AddrB;
input WEB, clk;
input [7:0] DataInB;
output [7:0] DataOut;
reg [7:0] DataOut;
reg [7:0] MemBank [3:0]; 

always@(posedge clk)
begin
   if(WEB)
   begin
	MemBank[AddrB] <= DataInB;
   end
   else if(!WEB)
   begin
	DataOut <= MemBank[AddrB];
   end
end
endmodule
