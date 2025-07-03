grep '^2018-08-' lab_c_04.txt | grep ' [1][2-9]:\| [2][0-3]:' | grep ' 22 ' | cut -d' ' -f4
