ls > /dev/null
echo "Zero: $?"

ls file  2>/dev/null
echo "Non-Zero: $?"
