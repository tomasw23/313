with Ada.Text_Io, Ada.Integer_Text_IO, Clock;
use Ada.Text_Io, Ada.Integer_Text_Io, Clock;


procedure Main is
   T , U : Integer;
   User_Input : String(1 .. 20);
   Last : Integer;
begin
   loop
      Put("Enter a number in hour from 0 .. 23: ");   
      Get(T);
      Put("The result of the function  is ");
      Put(To12(T));
      New_Line;   
      To12Proc(T,U);
      Put("The result of the procedure is ");
      Put(U);   
      New_Line;   
      Put_Line("Note that this program is not the correct conversion from 24hrs to am/pm"); 
      Put_Line("See ../README.txt for details");
      Get_Line(User_Input, Last);  -- clearing input buffer
      Put("Do you want to try again (y/n):");
      Get_Line(User_Input, Last);
      exit when User_Input(1 .. 1) = "n";
   end loop;   
end Main;


