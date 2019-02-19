pragma SPARK_Mode;

package body Loopexample is 

   
   procedure Main (N : in Integer; I, Res : out Integer) is
      begin
	 I := 0;
	 Res := 0;
	 loop
	    I := I + 1;
	    Res := Res + 2;
	    exit when Res >= N;
	 end loop;
      end Main;

      
     
   
end Loopexample;   
     
