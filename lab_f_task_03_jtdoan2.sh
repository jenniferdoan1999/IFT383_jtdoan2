if [ $# -eq 0 ]; then
echo "Usage: ./system_info.sh [cpu|memory|disk|all]"
exit 1
fi

case $1 in
cpu)
echo "CPU Information:"
lscpu | awk '/Architecture:/ {print "Architecture: \t" $2} 
/CPU op-mode\(s\):/ {print "CPU op-modes(s): \t" $3}
/^CPU\(s\):/ {print "CPU(s): \t\t" $2}'
;;


memory) 
echo "Memory Information"
free -h
;;
disk)
echo "Disk Usage Information:"
df -h
;;
all)
echo "CPU Information:"
lscpu  |   awk '
/Architecture:/ {print "Architecture: \t " $2}
/CPU op-mode\(s\):/ {print "CPU op-mode(s): \t " $3}
/^CPU\(s\):/ {print "CPU(s): \t " $2}'
echo
echo "Memory Information:"
free -h
echo
echo "Disk Usage Information:"
df -h
;;
*)
echo "Invalid argument. Usage: ./system_info.sh [cpu|memory|disk|all]"
;;
esac
