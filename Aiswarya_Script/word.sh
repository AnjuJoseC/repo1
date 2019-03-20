echo Enter a File name
read name
w=`cat $name|wc -w`
c=`cat $name|wc -c`
c=`expr $c - 1`
s=0
alpha=0
spec=0
j=' '
n=1
while test $n -le $c
do
    ch=`cat $name|cut -c $n`
    if [ "$ch" == "$j" ]
    then
        s=`expr $s + 1`
    fi
    case $ch in
     a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|uv|v|x|y|z) alpha=`expr $alpha + 1`
    esac
    n=`expr $n + 1`
done
echo alphabet=$alpha
spec=`expr $c - $alpha - $s`
echo words=$w
echo Characters=$c
echo spaces=$s
echo special symbols=$spec
