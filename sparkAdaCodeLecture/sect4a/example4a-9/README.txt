checking
   gnatprove -P main.gpr --proof=per_path
reports
    example.adb:9:16: medium: overflow check might fail

checking
    gnatprove -P mainWithoutRangeCheck.gpr  --proof=per_path
 reports no error   
