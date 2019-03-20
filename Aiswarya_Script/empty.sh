echo "Enter the directory name:"
read d;
if [ ! -d "$d" ]
then 
    echo "Directory Does'nt Exist";
    exit;
fi
cd $d
n=`find . -type d -empty | wc -l`
if [ $n -gt 0 ]
then
    find . -type d -empty -delete
    echo "Deleted Empty Folders"
else
    echo "No Empty Folders"
fi
