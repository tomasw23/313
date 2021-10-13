gnatmake has no errors

gnatprove -P main.gpr --proof=per_path
reports 
example.adb:25:14: medium: overflow check might fail
example.adb:31:14: medium: overflow check might fail
example.adb:37:14: medium: overflow check might fail

gnatprove -P mainWithoutRangeCheck.gpr  --proof=per_path
reports no errors
