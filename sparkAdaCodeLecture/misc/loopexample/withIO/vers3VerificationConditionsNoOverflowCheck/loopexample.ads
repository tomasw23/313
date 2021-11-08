pragma SPARK_Mode;

package Loopexample is 
   
   procedure Loopproc (N : in Integer; I, Res : out Integer) with
     Depends => (I => N,
                 Res => N),
     Pre  => (N > 0),
     Post => (Res = 2 * I and N <= Res and Res < N + 2);
   
   
end Loopexample;
