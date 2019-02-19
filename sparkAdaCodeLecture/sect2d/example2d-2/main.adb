pragma SPARK_MODE;

package body Main 
  is

   procedure A1
--     with Refined_Global => ((Output => Glob),
--			     (In_Out => Standard_Output))
      is  
      Y : Integer := 5;
begin
   Init;
   while (Y > 0) loop
      Y := A1(Y);
      New_Line;
   end loop;
end A1;

end Main;
   
   
