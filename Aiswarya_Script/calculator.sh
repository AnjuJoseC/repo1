clear
i="y"

echo " Enter First Num:"
read n1
echo "Enter Second Num:"
read n2

while [ $i = "y" ]
do
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "5.Modulo division"
echo "Enter your choice:"
read ch
if [ $ch = "1" ]
then
    echo "Result ="`expr $n1 + $n2`;
elif [ $ch = "2" ] 
then
    echo "Result ="`expr $n1 - $n2`;
elif [ $ch = "3" ]
then
   echo "Result ="`expr $n1 \* $n2`;
elif [ $ch = "4" ]
then
    if [ $n2 = "0" ]
    then
        echo "Division not Possible!...";
    else
        echo "Result ="`echo "scale=2; $n1 / $n2"|bc`;
    fi
elif [ $ch = "5" ]
then
    if [ $n2 = "0" ]
    then
        echo "Division not Possible!...";
    else
        echo "Result = "`expr $n1 % $n2`; 
    fi
    
else echo "Invalid choice"
fi
echo "Do You want to continue ?Enter 'y' to continue and 'n' to terminate:"
read i
if [ $i != "y" ]
then
    exit
fi
done 
