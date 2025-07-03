BEGIN {
FS = ", ";
total = 0;
count = 0;
}

NR > 1 {
breed[count] = $1;
votes[count] = $2 + 0;
total += votes[count];
count++;
}




END {
average = total / count;

printf("Total votes: %d\n", total);

printf("Average votes: %.2f\n", average);

print "\nMost popular:";
for (i = 0; i < count; i++) {
if (votes[i] > average) { print breed[i];
}}

print"\nLeast popular:";
for (i = 0; i < count; i++) {
if (votes[i] < average) {
print breed[i]; }
}

}
