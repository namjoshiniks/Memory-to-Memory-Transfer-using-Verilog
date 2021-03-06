module MasterModule(Reset,clk,DataInA,DataOut);

input Reset;
reg clk;
input [7:0] DataInA;
wire WEA,WEB, IncA,IncB,Sign;
wire [2:0] AddrA, AddrB;
wire [7:0] DOut1,DOut2,ADDOut,SUBOut,DataInB; 
output [7:0] DataOut;

assign clk = 0;
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

endmodule


