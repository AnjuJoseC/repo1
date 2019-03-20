declare -i cnt=$(($i))
echo "Enter a number:"
read num
for ((i=num ; i>0 ; --i)); 
do 
printf "%2s\n" "$i"
done
exit 0

