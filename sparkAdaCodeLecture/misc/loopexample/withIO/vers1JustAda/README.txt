gnatprove -P main.gpr --proof=per_path

reports
loopexample.adb:11:20: medium: overflow check might fail

loopexample.adb:12:24: medium: overflow check might fail


gnatprove -P mainWithoutRangeCheck.gpr --proof=per_path
and
gnatprove -P main.gpr --mode=flow
both succeed.

