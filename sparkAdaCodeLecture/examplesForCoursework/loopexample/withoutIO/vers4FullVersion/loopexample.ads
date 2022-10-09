pragma SPARK_Mode;

package Loopexample is 
   
   procedure Main (N : in Integer; I, Res : out Integer) with
     Depends => (I => N,
                 Res => N),
     Pre  => (N in 1 .. 1000),
     Post => (Res = 2 * I and N <= Res and Res < N + 2);
   
   
end Loopexample;
