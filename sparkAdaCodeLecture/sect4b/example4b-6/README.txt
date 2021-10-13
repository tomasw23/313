gnatmake returns no error

gnatprove -P main.gpr --proof=per_path
reports
decrease_increase.adb:9:25: medium: overflow check might fail

gnatprove -P mainWithoutRangeCheck.gpr  --proof=per_path
reports no errors
as does
gnatprove -P main.gpr  --mode=flow
