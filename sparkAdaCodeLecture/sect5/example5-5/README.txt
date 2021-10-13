gnatprove -P main.gpr --mode=flow

causes an error

example.ads:10:15: high: "M" is not initialized at subprogram entry

The reason is that M is an out parameter, so there is no initial value of M.

