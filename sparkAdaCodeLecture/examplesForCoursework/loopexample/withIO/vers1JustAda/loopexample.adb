pragma SPARK_Mode;

package body Loopexample is 

   
   procedure Loopproc (N : in Integer; I, Res : out Integer) is
      begin
      I := 0;
      Res := 0;
      loop
         -- sparkada reports overlow problems
         -- see README.txt for details
         I := I + 1;
         Res := Res + 2;
         exit when Res >= N;
      end loop;
   end Loopproc;

      
     
   
end Loopexample;   
     
