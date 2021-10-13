gnatmake has no errors

gnatprove -P main.gpr --mode=flow
reports errors discussed in the lecture:

exchange_and_count.ads:5:34: warning: unused initial value of "Z"
exchange_and_count.ads:8:08: medium: missing dependency "null => Z"
exchange_and_count.ads:10:20: medium: missing dependency "Z => X"
exchange_and_count.ads:10:25: medium: incorrect dependency "Z => Z"

