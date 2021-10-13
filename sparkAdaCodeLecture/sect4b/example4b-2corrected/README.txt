Correction of example-4b (except for overflow error which will be discussed in 
    sect 5 )

gnatprove -P main.gpr --proof=per_path
reports
exchange_and_count.adb:9:34: medium: overflow check might fail


gnatprove -P mainWithoutRangeCheck.gpr --proof=per_path
reports no errors.


