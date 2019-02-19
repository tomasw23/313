gnatmake main.adb

returns the known issue
spark-text_io.ads:95:25: warning: unrecognized convention name, C assumed
spark-text_io.ads:99:25: warning: unrecognized convention name, C assumed
spark-text_io.ads:103:25: warning: unrecognized convention name, C assumed
spark-text_io.ads:108:23: warning: unrecognized convention name, C assumed
spark-text_io.ads:114:25: warning: unrecognized convention name, C assumed


gnatprove -P main.gpr --proof=per_path
returns in addition an overflow
example.adb:9:16: medium: overflow check might fail
