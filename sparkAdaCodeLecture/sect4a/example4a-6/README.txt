gnatprove -P main.gpr --mode=flow
and as well
gnatprove -P main.gpr --proof=per_path

both return

example.ads:5:24: warning: unused initial value of "X"


this is the expected error discussed in the lecture
