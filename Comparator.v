module Comparator(DOut2,DOut1,Sign);

input [7:0] DOut2, DOut1;
output Sign;
reg Sign;
reg [7:0] Result,DOut1_2sComp;

always@(DOut2 or DOut1)
begin
  DOut1_2sComp = (~DOut1) + 8'b00000001;
  Result = DOut2 + DOut1_2sComp;
  Sign = Result[7];
end
endmodule
