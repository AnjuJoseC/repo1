echo "Enter a Number";
read count;
for ((i = $count; i > 0; i--)); do

    printf " %2s\n" "$i"

done
