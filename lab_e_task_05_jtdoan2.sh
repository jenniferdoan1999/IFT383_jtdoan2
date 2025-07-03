read -p "Enter your name: " name

read -p "Enter the date: " date

read -p "Enter your city: " city

read -p "Enter the current temperature: " temp

formatted_date=$(date -d "$date" "+%B $D, %Y")


echo "Hello, $name. I see you are from the city of $city. Today is $formatted_date, and the temperature is $temp degrees."
