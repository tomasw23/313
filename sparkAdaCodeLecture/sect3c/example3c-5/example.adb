-- pragma SPARK_MODE;
-- with SPARK.Text_IO; use SPARK.Text_IO;

package body Example 
 with SPARK_MODE is   
   
procedure Test1 (A : Integer)

is
   type Vec is array(0 .. A) of Integer; 
   -- causes error later at line marked with (*) that 
   --    that it is not initialised 
   --      although it is.
   B : Vec ; 
   -- B : Vec  := (0 .. A  => 0); -- causes range check might fail
   -- B : Vec  := (others  => 0); -- causes range check might fail   
begin
   for I in 0 .. A loop
      B(I):= 3;
   end loop;
   for I in 0 .. 7 loop
      if I = A then
	 B(I):= 7;  -- (line marked with (*) 
	 Mainvar:= 3;
      end if;
      -- causes that array check may fail when using 
      --      gnatprove -P main.gpr --mode=prove
      -- no problem when using
      --      gnatprove -P mainWithoutRangeCheck.gpr --mode=prove
      if I = A + 1 then 
	 --  sparkada check cuases array index check might fail
	 B(I):= 3;
	 Mainvar:= 7;
      end if;
      --  sparkada check cuases array index check might fail      
      if B(I) = 7 then Mainvar:= 4; 
      end if;
   end loop;
end Test1;

end Example;
