echo "Please select one of the following operations:"
echo ""
echo "add sub mul div exp mod"
echo ""

read -p "Enter the operator: " operator
echo ""

read -p "Enter the first number: " number1
echo""

read -p "Enter the second number: " number2
echo""


case $operator in
add)
total=$((number1 + number2))
;;
sub)
total=$((number1 -  number2))
;;
mul)
total=$((number1 * number2))
;;
div)
total=$((number1 / number2))
;;
mod)
total=$((number1 % number2))
;;
*)
echo "Try again."
exit 1 
;;
esac


echo "The result of the $operator operation on $number1 and $number2 is $total." 

