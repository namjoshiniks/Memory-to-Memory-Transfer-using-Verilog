module Controller(clk,Reset,WEA,WEB,IncA,IncB);

input clk,Reset;
output WEA,WEB,IncA,IncB;
reg WEA,WEB,IncA,IncB;
reg [7:0] DataOut;
reg [6:0] count; 

always@(posedge clk)
begin 
  if(Reset)
   begin 
    count = 0;
    WEA = 1;
    IncA = 1;
    WEB = 0;
    IncB = 0;
    count = count + 1; 
   end 
  else
   begin
     /*if(count == 0)
      begin 
       WEA = 0;
       IncA = 0;
       WEB = 0;
       IncB = 0;
       count = count + 1;
      end */
     if(count <= 8 && count > 0)
      begin 
       WEA = 1;
       IncA = 1;
       WEB = 0;
       IncB = 0;
       count = count + 1;
      end 
     else if(count == 9) 
      begin 
       
       IncA = 1;       
       WEB = 0;
       IncB = 0;
       WEA = 0;
       count = count + 1; 
      end 
     else if(count == 10)
     begin
       WEA = 0;
       IncA = 1;
       WEB = 0;
       IncB = 0;
       count = count + 1; 
     end
     else if(count >= 11 && count <= 19)
      begin 
      if(count == 11)
        begin 
         WEB = 1;
         IncB = 0;
         count = count + 1;
        end 
      else if(count == 12)
        begin 
         WEB = 0;
         IncB = 1;
	 count = count + 1;
        end 
      else if(count == 13)
        begin 
         WEB = 1;
         IncB = 0;
         count = count + 1;
        end 
      else if(count == 14)
        begin  
         WEB = 0;
         IncB = 1;
         count = count + 1;
        end 
      else if(count == 15)
        begin 
         WEB = 1;
         IncB = 0;
         count = count + 1;
        end 
       else if(count == 16)
        begin 
         WEB = 0;
         IncB = 1;
         count = count + 1;
        end 
       else if(count == 17)
        begin 
         WEB = 1;
         IncB = 0;
         IncA = 0;
         count = count + 1;
        end 
       else if(count == 18)
        begin 
         WEB = 0;
         IncB = 1;
         IncA = 0;
         count = count + 1;
        end
       else if(count == 19)
	begin
         IncB = 0;
        end
      end 
       
     end 
  end 


endmodule 

