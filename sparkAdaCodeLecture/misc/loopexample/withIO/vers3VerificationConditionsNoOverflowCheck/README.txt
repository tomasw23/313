gnatprove -P main.gpr --proof=per_path

reports
loopexample.adb:15:24: medium: overflow check might fail
loopexample.ads:9:52: medium: overflow check might fail



gnatprove -P mainWithoutRangeCheck.gpr --proof=per_path
succeeds
