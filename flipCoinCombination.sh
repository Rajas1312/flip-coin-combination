#!/bin/bash -x
echo "program on coin flip combination"
a=0
b=0
if [ $((RANDOM%2)) -eq 0 ]
then
	echo "heads"
else
	echo "Tails"
fi

declare -A combo
for i in {1..10}
do
	if [ $((RANDOM%2)) -eq 0 ]
	then
		combo[$i]="H"
		((a++))
	else
		combo[$i]="T"
		((b++))
	fi
	echo " the singlet dictionary for 10 coin flips is" ${combo[@]}
done
c=$((a/10*100))
echo "the percentge of heads is $c"
d=$((b/10*100))
echo "the percentage of tails is $d"
