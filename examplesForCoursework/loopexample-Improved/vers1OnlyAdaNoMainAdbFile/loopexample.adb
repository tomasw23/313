pragma SPARK_Mode;

package body Loopexample is 

   
   procedure Loopproc (N : in Integer; Res : out Integer) is
   begin
      Res := 0;
      loop   
         exit when Res = N;
         Res := Res + 1;
      end loop;
   end Loopproc;

      
     
   
end Loopexample;   

