clear
sum=0;
for i in $*
do
    sum=`expr $sum + $i`
done
echo "Sum of "$#" Numbers is":$sum
avg=`expr $sum / $#`;
echo "Average of "$#" Numbers is":$avg
