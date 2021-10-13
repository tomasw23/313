Spark Ada 2015 detected an infinite loop 
Spark Ada 2021 doesn't detect this anymore.

gnatprove -P main.gpr --mode=prove
  fails in line return F(X + 1); 
gnatprove -P mainWithoutRangeCheck.gpr --mode=prove
  succeeds

