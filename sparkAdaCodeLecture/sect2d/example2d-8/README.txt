gnatmake main.adb

returns


gcc -c main.adb
gcc -c example.adb
gcc -c spark.ads
gcc -c spark-text_io.adb
spark-text_io.ads:95:25: warning: unrecognized convention name, C assumed
spark-text_io.ads:99:25: warning: unrecognized convention name, C assumed
spark-text_io.ads:103:25: warning: unrecognized convention name, C assumed
spark-text_io.ads:108:23: warning: unrecognized convention name, C assumed
spark-text_io.ads:114:25: warning: unrecognized convention name, C assumed

known issue of spark-text_io.ads

gnatprove -P main.gpr --proof=per_path

returns the same and an overflow check:

example.adb:11:16: medium: overflow check might fail
