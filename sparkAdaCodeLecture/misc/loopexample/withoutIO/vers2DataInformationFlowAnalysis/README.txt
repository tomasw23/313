gnatprove -P main.gpr --proof=per_path
reports

loopexample.adb:13:20: medium: overflow check might fail

loopexample.adb:16:24: medium: overflow check might fail


gnatprove -P main.gpr --mode=flow
and
gnatprove -P main.gpr --mode=flow
both succeed.
