if [ $# -eq 0 ]; then
echo "Usage: ./script.sh [add|sub|mul|div|exp|mod] num1 num2 ..." 
exit 1
fi

operator="$1"
shift

case "$operator" in
add|sub|mul|div|exp|mod) 
;;
*)
echo "Invalid operation. Supported operations: add, sub, mul, div, exp, mod"
exit 1
;;
esac 

result="$1"
shift

for num in "$@"; do
case "$operator" in
add)
result=$((result + num)) ;;
sub)
result=$((result - num)) ;;
mul) result=$((result * num)) ;;
div) result=$((result / num)) ;;
exp) result=$((result ** num)) ;;
mod) result=$((result % num)) ;;
esac
done
echo "$result"
