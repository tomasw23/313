with SPARK.Text_IO; use SPARK.Text_IO;


procedure Example
  with SPARK_MODE

is
   A : Integer := 0;
begin
   loop 
      if A = 5 then
	 New_Line;
	 return;
      end if;
      A := A + 1;
      New_Line;
  end loop;
end Example;
