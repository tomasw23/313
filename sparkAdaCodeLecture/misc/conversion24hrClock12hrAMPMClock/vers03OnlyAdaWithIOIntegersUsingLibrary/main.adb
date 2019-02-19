pragma SPARK_Mode (On);

with AS_IO_Wrapper;  use AS_IO_Wrapper; 
with Clock;  use Clock; 


procedure Main is
   T , U : Integer;
   User_Input : String(1 .. 20);
   Last : Integer;

begin
   -- First we initialise standard_input and standard output
   AS_Init_Standard_Output;
   AS_Init_Standard_Input; 
   loop
     AS_Put("Enter a number in hour from 0 .. 23: ");   
     AS_Get(T,"Please type in an integer; please try again");
     -- Print on screen "Type in some number"
     AS_Put("The result of the function  is ");
     AS_Put_Line(To12(T));
     To12Proc(T,U);
     AS_Put("The result of the procedure is ");
     AS_Put_Line(U);   
     AS_Put_Line("Note that this program is not the correct conversion from 24hrs to am/pm"); 
     AS_Put_Line("See ../README.txt for details");
     As_Put("Do you want to try again (y/n)? ");
     As_Get_Line(User_Input, Last);
     exit when User_Input(1 .. 1) = "n";
   end loop;        
end Main;
   

