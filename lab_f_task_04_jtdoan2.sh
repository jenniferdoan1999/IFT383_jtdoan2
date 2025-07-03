books=()
add_book() {
books+=("$1") echo "Book '$1' added."
}



remove_book() {
local book_remove="$1"
local new_books=()
local found=0
for b in "${books[@]}"; do
if [[ "$b" == "$book_remove" ]]; then
found=1
else
new_books+=("$b")
fi
done
if [[ $found -eq 1 ]]; then
books=("${new_books[@]}")
echo "Book '$book_remove' removed."
else
echo "Book '$book_remove' not found."
fi
}



list_books() {
echo "Books:"
for b in "${books[@]}"; do
echo "$b"
done
}

while true; do
echo -n "Enter a command ([add|remove|list|help|exit] [book_title]): "
read -r cmd input
title="$input"

if [[ "$cmd" == "add" || "$cmd" == "remove" ]]; then
read -r rest_of_title
title="$input $rest_of_title"
fi

case "$cmd" in
add)
if [[ -z "$title" ]]; then
echo "Error: Try again."
else
add_book "$title"
fi
;;
remove)
if [[ -z "$title" ]]; then
echo "Error: Try again."
else
remove_book "$title"
fi
;;
list)
list_books
;;
help) echo "Commands: add [book_title], remove [book_title], list, help, exit"
;;
exit)
echo "Exiting."
break
;;
*)
echo "Invalid command. Enter 'help' for usage instructions."
;;
esac
done
