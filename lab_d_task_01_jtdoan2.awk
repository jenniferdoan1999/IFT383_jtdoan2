BEGIN {
FS = ",";
print "Name Final Grade"

}

NR > 1 {
print $1, $2
}

