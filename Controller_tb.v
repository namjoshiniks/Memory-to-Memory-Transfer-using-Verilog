module Controller_tb();

reg clk,Reset;
wire WEA,WEB,IncA,IncB,AddrA,AddrB,DataInA,DOut1,DOut2,ADDOut,SUBOut;
wire [7:0] DataOut;

always 
#5 clk = ~clk;

Controller MUT(clk,Reset,WEA,WEB,IncA,IncB,AddrA,AddrB,DataInA,DOut1,DOut2,ADDOut,SUBOut,DataOut);


initial begin
clk = 1'b0;
Reset = 1;

@(posedge clk)
Reset = 0;

end

endmodule

