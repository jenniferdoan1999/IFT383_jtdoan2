BEGIN { FS = "," }

NR > 1 { print $1 " is taking " $3 "." }
