The line
      A := A + 1;
fails if checked with
    gnatprove -P main.gpr --mode=prove
because of possible out of range error
using
   gnatprove -P mainWithoutRangeCheck.gpr --mode=prove
it succeeds (no range check)


Note
~~~~
In a previous version
  spark ada rejected example2.adb
  because the condition
     if A = 6 then  
  is always false





 
