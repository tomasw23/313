gnatmake succeeds (although there is a recursion)

gnatprove -P main.gpr --proof=per_path

detects an overlflow check in
example.adb:8:18: medium: overflow check might fail
example.adb:16:18: medium: overflow check might fail
which is due to incrementing an unlimited integer by one and therefore
possibly getting an overflow

gnatprove -P mainWithoutRangeCheck.gpr --mode=prove 
  succeeds

