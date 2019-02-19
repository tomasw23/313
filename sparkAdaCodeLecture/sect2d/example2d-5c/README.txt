gnatprove -P main.gpr --proof=per_path

returns

example.adb:6:09: warning: variable "T" is assigned but never read
example.adb:8:09: warning: useless assignment to "T", value never referenced
example.adb:8:11: warning: unused assignment
example.ads:5:24: warning: unused initial value of "X"

These are the expected error messages from the lecture
