gnatmake main.adb

returns
example.adb:8:14: possible infinite recursion
example.adb:8:14: Storage_Error might have been raised at run time

gnatprove -P main.gpr --proof=per_path

returns the same
