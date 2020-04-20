#! /bin/bash
# create array
echo "put objects in array and hit 'Enter' + 'Ctrl+D' when finished"
while read line
do
    my_array=("${my_array[@]}" $line)
done
# If you just run it, it will keep reading from standard-input until you hit Enter and Ctrl+D (EOF)
max=${my_array[0]}
for n in "${my_array[@]}" ; do
    ((n > max)) && max=$n
done
# sum
declare -i sum
IFS=+ sum="${my_array[*]}"
# compare max value with  sum of array
 if (( max > (sum - max)/2 ));
then 
echo "NO"
elif (( $sum % 2 )); then
echo "NO"
else 
echo "YES"
fi
