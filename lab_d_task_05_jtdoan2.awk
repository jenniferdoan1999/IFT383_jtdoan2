BEGIN {
FS =","; }

{ total = 0
op = $NF 
for (i = 1; i < NF; i++)
{
if (op == "ADD")
total += $i
else if (op == "SUB")
total -= $i}

print total 
}
