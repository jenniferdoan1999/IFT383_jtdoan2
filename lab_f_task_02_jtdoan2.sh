if [ $# -eq 0 ]; then
echo "Usage: ./lab_f_task_02.jtdoan2.sh [file1] [file2] . . . [fileN]"
exit 1
fi



while [ $# -gt 0 ]; do
file ="$1"
if [ -f "$file" ]; then
lines=$(wc -l < "$file")
echo "The file $file has $lines lines."
else
echo "Error: The File $file does not exist."
fi
shift
done
