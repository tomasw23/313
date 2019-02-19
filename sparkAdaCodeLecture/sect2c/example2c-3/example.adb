with SPARK.Text_IO; use SPARK.Text_IO;


procedure Example
  with SPARK_MODE

is
   A : Integer := 0;
begin
   Outer: loop 
      if A = 5 then
	 if A + 0 = 6 then  -- if A = 6 fails since spark ada sees that this condition is always false.
	    New_Line;
	    exit outer;
	 end if;
      end if;
      A := A + 1;
      New_Line;
  end loop Outer;
end Example;
