gnatmake succeeds (although there is a recursion)

gnatprove -P main.gpr --proof=per_path

detects an overflow check in

example.adb:8:23: medium: overflow check might fail
example.adb:8:28: medium: overflow check might fail
example.adb:16:18: medium: overflow check might fail

which is due to increasing or decreasing integers without any
restrictions

