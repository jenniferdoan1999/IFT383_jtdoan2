BEGIN {
FS ",";
grades["A"]=4
grades["B"]=0
grades["C"]=1
grades["D"]=1
grades["E"]=1 }

NR > 1 {
grades[$2]++
}

END {
print "A," grades["A"]
print "B," grades["B"]
print "C," grades["C"]
print "D," grades["D"]
print "E," grades["E"]
}
