touch f1.txt;
echo "Enter The content of first file:"
cat>>f1.txt;
echo "--------------------------------"
touch f2.txt;
echo "Enter The content of second file:"
cat>>f2.txt;
echo "--------------------------------"
touch f3.txt;
echo "Enter The content of third file:"
cat>>f3.txt;
echo "--------------------------------"
echo "The first 3 columns of first f1 is::";
echo "------------------------------------"
cut -b 1,2,3 f1.txt;
echo
cat f1.txt>>f2.txt;
cat f2.txt>>f3.txt;
echo "Files f1.txt and f2.txt have been redirected to f3.txt"
echo "Contents of f3.txt Now::"
cat f3.txt;
echo "------------------------------------"
echo "Enter the string to be searched in f3.txt:";
read s;
if grep $s f3.txt
then echo "String found"
else
    echo "String not found"
fi
