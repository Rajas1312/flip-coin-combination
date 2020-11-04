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


e=0
f=0
g=0
h=0

declare -A doublet
for i in {1..10}
do
	if [ $((RANDOM%4)) -eq 0 ]
	then
		doublet[$i]="HH"
		((e++))
	fi
		if [ $((RANDOM%4)) -eq 1 ]
		then
			doublet[$i]="HT"
			((f++))
		fi
			if [ $((RANDOM%4)) -eq 2 ]
			then
				doublet[$i]="TH"
				((g++))
			fi
				if [ $((RANDOM%4)) -eq 3 ]
				then
					doublet[$i]="TT"
					((h++))
				fi
done
j=$((e/10*100))
echo "the percentage of HH is $j"
k=$((f/10*100))
echo "the percentage of HT is $k"
l=$((g/10*100))
echo "the precentage of TH is $l"
m=$((h/10*100))
echo "the percentage of TT is $m"


n=0
o=0
p=0
q=0
r=0
s=0
declare -A triplet
for i in {1..10}
do
	if [ $((RANDOM%6)) -eq 0 ]
	then
		triplet[$i]="HHH"
		((n++))
	fi
		if [ $((RANDOM%6)) -eq 1 ]
		then
			triplet[$i]="HHT"
			((o++))
		fi
			if [ $((RANDOM%6)) -eq 2 ]
			then
				triplet[$i]="HTH"
				((p++))
			fi
				if [ $((RANDOM%6)) -eq 3 ]
				then
					triplet[$i]="TTT"
					((q++))
				fi
					if [ $((RANDOM%6)) -eq 4 ]
					then
						triplet[$i]="THT"
						((r++))
					fi
						if [ $((RANDOM%6)) -eq 5 ]
						then
							triplet[$i]="TTH"
							((s++))
						fi
			echo "the triplet dictionary is "${triplet[@]}
done
t=$((n/10*100))
echo "the percentage of HHH is $t"
u=$((o/10*100))
echo "the percentage of HHT is $u"
v=$((p/10*100))
echo "the percentage of HTH is $v"
w=$((q/10*100))
echo "the percentage of TTT is $w"
x=$((r/10*100))
echo "the percntage of THT is $x"
y=$((s/10*100))
echo "the percentage of TTH is $y"
