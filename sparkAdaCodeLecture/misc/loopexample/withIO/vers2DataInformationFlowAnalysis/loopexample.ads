pragma SPARK_Mode;

package Loopexample is 
   
   procedure Loopproc (N : in Integer; I, Res : out Integer) with
     Depends => (I => N,
		 Res => N);
   
   
end Loopexample;
