echo "Enter your Name";
read name;
echo "The Entered Name Is:"$name;
echo
touch file1.txt;
echo "The Present Working Directory Is:";
pwd;
echo
mkdir $name;
echo "Directory Created";
echo
cd $name;
echo "The Directory Changed";
pwd;
echo
touch details.txt;
echo "Enter Your Name and Address:";
cat>>details.txt;
echo
echo "The Name and Address you have entered is:";
cat details.txt;
tar -cvf details.tar details.txt
echo "The file has been Compressed";
