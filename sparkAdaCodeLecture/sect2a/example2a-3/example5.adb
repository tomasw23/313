with Ada.Text_Io, Ada.Integer_Text_IO;
use Ada.Text_Io, Ada.Integer_Text_Io ;


Procedure Example5 is
   subtype Year is Integer range 0 .. 2100;
   type Day is (Mon,Tue,Wed,Thu,Fri,Sat,Sun);
   subtype Weekday is Day range Mon .. Fri;
   Myyear : Year := 2010;
   Myday  : Weekday := Fri;
  begin
     Put("Year = ");
     Get(Myyear);
     -- Put(Myyear);
     -- Myyear := Myyear + 1;
     -- Put(Myyear);
     if Myday = Fri then
	Put_Line("Fri");
     else
	Put_Line("Not Fri");
     end if;
     
  end Example5;
  
     
	    
