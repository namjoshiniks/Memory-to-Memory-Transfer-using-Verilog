module Controller_test();

reg clk,Reset;
reg [7:0] DataInA;
wire IncA,IncB,WEA,WEB,Sign;
wire [7:0] DataInB,SUBOut,ADDOut,DOutTemp,DOut1,DOut2;
wire [2:0] AddrA;
wire [1:0] AddrB;
wire [7:0] DataOut;

always 
#5 clk = ~clk;


Controller MUT(clk,Reset,WEA,WEB,IncA,IncB);
CounterA MUT1(IncA,Reset,clk,AddrA);
CounterB MUT8(IncB,Reset,clk,AddrB);
MemoryA MUT2(clk,AddrA,WEA,DataInA,DOut1);
Delay_DFF MUT3(DOut2,DOut1,clk);
Adder MUT4(ADDOut,DOut2,DOut1);
Subtracter MUT5(SUBOut,DOut2,DOut1);
Comparator MUT6(DOut2,DOut1,Sign);
Mux2_1 MUT7(ADDOut,SUBOut,Sign,DataInB);
MemoryB MUT9(clk,AddrB,WEB,DataInB,DataOut);



initial begin
clk = 1'b0;
Reset = 1;

@(posedge clk)
begin
Reset = 0;
DataInA = 8'b00000001;
end

@(posedge clk)
begin
DataInA = 8'b00000010;
end

@(posedge clk)
begin
DataInA = 8'b00000011;
end

@(posedge clk)
begin
DataInA = 8'b00000100;
end

@(posedge clk)
begin
DataInA = 8'b00000101;
end

@(posedge clk)
begin
DataInA = 8'b00000110;
end

@(posedge clk)
begin
DataInA = 8'b00000111;
end

@(posedge clk)
begin
DataInA = 8'b00001000;
end

end

endmodule
