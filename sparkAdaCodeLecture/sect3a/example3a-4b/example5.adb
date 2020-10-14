with Ada.Text_Io, Ada.Integer_Text_IO;
use Ada.Text_Io, Ada.Integer_Text_Io ;


Procedure Example5 is
   subtype Year is Integer range 0 .. 2100;
   Integeryear   : Integer := 2010;
   Myyear : Year;
  begin
     Put("Year = ");
     Get(Integeryear);
     -- Put(Myyear);
     -- Myyear := Myyear + 1;
     -- Put(Myyear);
     if Integeryear >= 0 and Integeryear <= 2100 then
	   Myyear := Year(Integeryear);
     else
	   Myyear := 2100;
     end if;
     
  end Example5;
  
     
	    
