pragma SPARK_Mode;

package body Loopexample is 

   
   procedure Main (N : in Integer; I, Res : out Integer) is
   begin
      I := 0;
      Res := 0;
      loop
         -- sparkada reports overflow check might fail
         -- see README.txt
         I := I + 1;
         -- sparkada reports overflow check might fail
         -- see README.txt       
         Res := Res + 2;
         exit when Res >= N;
      end loop;
   end Main;

      
     
   
end Loopexample;   
     
