Basic notation for pre and post conditions


gnatprove -P main.gpr --proof=progressive
reports two overflow check condition problems:

example.adb:6:14: medium: overflow check might fail
example.adb:7:14: medium: overflow check might fail


gnatprove -P mainWithoutRangeCheck.gpr --proof=progressive
succeeds
