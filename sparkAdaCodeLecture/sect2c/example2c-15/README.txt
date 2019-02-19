gnatmake main.adb 
succeeds

gnatprove -P main.gpr --proof=per_path
gives an error
main.adb:10:07: warning: actuals for this call may be in wrong order

referring to the statement
Exchange(Y,X);      
I don't understand this message.
