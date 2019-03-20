echo "Enter the number:"
read num;
temp=$num;
r=0;
s=0;
while [ $num != 0 ]
do
    r=`expr $num % 10`;
    s=`expr $s \* 10 + $r`;
    num=`expr $num / 10`;
done
if [ $s = $temp ]
then
    echo "The Number is a palidrome"
else
    echo "The Number is not a Palindrome"
fi
