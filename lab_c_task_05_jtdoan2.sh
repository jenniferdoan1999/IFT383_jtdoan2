grep TCP lab_c_04.txt | grep -E '[[:space:]](100|[1-9][0-9]{2,})$' | cut -d' ' -f5
