gnatprove -P main.gpr --proof=per_path

reports

loopexample.adb:13:24: medium: overflow check might fail

loopexample.ads:9:52: medium: overflow check might fail

gnatprove -P mainWithoutRangeCheck.gpr --proof=per_path`
and 
gnatprove -P main.gpr --mode=flow
both succeed
