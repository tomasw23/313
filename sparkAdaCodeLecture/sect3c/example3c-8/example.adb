-- pragma SPARK_MODE;
-- with SPARK.Text_IO; use SPARK.Text_IO;

package body Example 
 with SPARK_MODE is   
   
procedure Test1 

is
   type Vec2 is array(0 .. 11) of Integer;    
   type Vec is array(0 .. 10) of Integer; 
   B : Vec2 := (others => 3);
   B2 : Vec  := B;

begin
   for I in 0 .. 10 loop
      B(I):= B2(I);
   end loop;
end Test1;

end Example;
