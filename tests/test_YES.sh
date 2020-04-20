#! /bin/bash
my_array=(1 1 2 2)
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
