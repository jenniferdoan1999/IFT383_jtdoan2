BEGIN {
FS = ", "; leastVotes = -1; }


NR > 1 {
breed = $1;
votes = $2 + 0;

if (leastVotes == -1 || votes < leastVotes) 
{ leastVotes = votes; leastBreed = breed; }
}

END {
print "The " leastBreed " is sad because it only got " leastVotes " votes(s)." }
