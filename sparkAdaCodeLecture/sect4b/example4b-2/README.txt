gnatmake gives no errors

gnatprove -P main.gpr --mode=flow
reports 

exchange_and_count.ads:7:20: medium: missing dependency "Z => X"

gnatprove -P main.gpr --proof=per_path
reports this error and in addition an overflow error
exchange_and_count.adb:6:34: medium: overflow check might fail

gnatprove -P mainWithoutRangeCheck.gpr --proof=per_path
reports only the flow error.

See 
example4b-2corrected/
for the corrected version of this program

