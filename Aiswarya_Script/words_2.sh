echo "Enter a file name"
read name
echo "---------------------------------"
cat $name
echo "---------------------------------"
word=`cat $name|wc -w`
char=`cat $name|wc -m`
line=`cat $name|wc -l`
space=`grep -o " " $name | wc -l`
newline=`grep $'\n' $name | wc -l`
special=`grep -o "[!,@,#,$,%,^,&,*,(,),_,-,+,=,{,},|,\,:,;,\",',<,>,.,?,/,~,,]" $name|wc -l`

echo "number of words :" $word
echo "number of characters :" `expr $char - $newline`
echo "number of lines :" $line
echo "number of white spaces :" $space 
echo "number of special characters :" $special
