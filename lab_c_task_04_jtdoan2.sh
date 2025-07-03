tail -n +2 lab_c_04.txt | cut -d' ' -f1 | sort | tail -n 1 | sed 's/-/\//g'

