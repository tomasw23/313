pragma SPARK_MODE;
with SPARK.Text_IO; use SPARK.Text_IO;

with Example;
use Example;

procedure Main
is  
   Y : Float := 5.0;
begin
   Init;
   while (Y > 0.0) loop
      Y := A1(Y);
      New_Line;
   end loop;
end Main;
   
   
