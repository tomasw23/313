pragma SPARK_Mode;

package body Loopexample is 

   
   procedure Loopproc (N : in Integer; I, Res : out Integer) is
      begin
	 I := 0;
	 Res := 0;
	 loop
	    pragma Loop_Invariant (Res = 2 * I and Res < N );
	    -- spark ada reports overflow checks might fail
	    -- see README.txt
	    I := I + 1;
	    Res := Res + 2;
    	    exit when Res >= N;
	 end loop;
      end Loopproc;

      
     
   
end Loopexample;   
     
