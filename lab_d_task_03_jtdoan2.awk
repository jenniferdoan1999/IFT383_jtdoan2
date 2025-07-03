BEGIN {
FS = ",";
print "These are the students who have an A:" }

NR > 1 && $2 == "A" { print $1 }
