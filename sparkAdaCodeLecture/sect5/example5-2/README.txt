Trying out syntax for formulas in pre and post conditions.
Formulas don't make sense, are just used to demonstrate formulas.

gnatprove -P main.gpr --proof=progressive
causes errors, it was not intended to get this example correct
example5-3 is a variant in which these errors have been repaired.

data and information flow analysis succeeds:
gnatprove -P main.gpr --mode=flow


This example demonstrates that the usage of connectives

if .. then ..
xor
or

worked.

for all, for some was syntactically accepted as a condition but
didn't result in generation of verification condition in why3

