module CounterB(IncB,Reset,clk,AddrB);

input IncB,Reset,clk;
output [1:0] AddrB; 
reg [1:0] AddrB;

always@(posedge clk)
 begin
  if(Reset)
    AddrB <= 2'b00;
  else if(IncB)
    AddrB <= AddrB + 2'b01; 
 end

endmodule
