This shows that from a files with sparkmode on one cannot call
a file with sparkmode off
This happens in this example with
main.adb (sparkmode on) calling exchange in example.adb (sparkmode off)

gnatprove -P main.gpr --proof=per_path

gives

Phase 1 of 2: generation of Global contracts ...
Phase 2 of 2: flow analysis and proof ...
main.adb:9:07: "Exchange" is not allowed in SPARK
main.adb:9:07: violation of pragma SPARK_Mode at line 1
main.adb:10:07: warning: actuals for this call may be in wrong order
main.adb:10:07: "Exchange" is not allowed in SPARK
main.adb:10:07: violation of pragma SPARK_Mode at line 1
gnatprove: error during flow analysis and proof
