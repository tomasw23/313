pragma SPARK_MODE;
with SPARK.Text_IO; use SPARK.Text_IO;

with Example; use Example;


procedure main
      is  
      Y : Integer := 5;
begin
   Init;
   while (Y > 0) loop
      Y := A1(Y);
      New_Line;
   end loop;
end Main;
   
   
