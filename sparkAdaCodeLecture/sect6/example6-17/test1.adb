pragma SPARK_Mode (Off);

with Integer_IO;    use Integer_IO;
with SPARK.Text_IO; use SPARK.Text_IO;

procedure Test1 is
begin
   if Is_Readable(Standard_Input) 
   then Put("Is_Readable(Standard_Input)"); 
   end if;
   end Test1;
