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
if [ $a -gt $b ]
then
	echo " Heads is winning combo"
else
	echo "Tails is winning combo"
fi


e=0
f=0
g=0
h=0
declare -A doublet
for i in {1..10}
do
	h1=$((RANDOM%4))
	if [ $h1 -eq 0 ]
	then
		doublet[$i]="HH"
		((e++))
	fi
		if [ $h1 -eq 1 ]
		then
			doublet[$i]="HT"
			((f++))
		fi
			if [ $h1 -eq 2 ]
			then
				doublet[$i]="TH"
				((g++))
			fi
				if [ $h1 -eq 3 ]
				then
					doublet[$i]="TT"
					((h++))
				fi
		echo "the doublet dictionary is " ${doublet[@]}
done
j=$((e/10*100))
echo "the percentage of HH is $j"
k=$((f/10*100))
echo "the percentage of HT is $k"
l=$((g/10*100))
echo "the precentage of TH is $l"
m=$((h/10*100))
echo "the percentage of TT is $m"
if [ $e -gt $f ] && [ $e -gt $g ] && [ $e -gt $h ]
then
	echo "HH is winning combo"
fi
if [ $f -gt $e ] && [ $f -gt $g ] && [ $f -gt $h ]
then
	echo "HT is winning combo"
fi
if [ $g -gt $e ] && [ $g -gt $f ] && [ $g -gt $h ]
then
	echo "TH is winning combo"
fi
if [ $h -gt $e ] && [ $h -gt $f ] && [ $h -gt $g ]
then
	echo "TT is winning combo"
fi


n=0
o=0
p=0
q=0
r=0
s=0
declare -A triplet
for i in {1..10}
do
	s1=$((RANDOM%6))
	if [ $s1 -eq 0 ]
	then
		triplet[$i]="HHH"
		((n++))
	fi
		if [ $s1 -eq 1 ]
		then
			triplet[$i]="HHT"
			((o++))
		fi
			if [ $s1 -eq 2 ]
			then
				triplet[$i]="HTH"
				((p++))
			fi
				if [ $s1 -eq 3 ]
				then
					triplet[$i]="TTT"
					((q++))
				fi
					if [ $s1 -eq 4 ]
					then
						triplet[$i]="THT"
						((r++))
					fi
						if [ $s1 -eq 5 ]
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

if [ $n -gt $o ] && [ $n -gt $p ] && [ $n -gt $q ] && [ $n -gt $r ] && [ $n -gt $s ]
then
	echo "HHH is winning combo"
fi
if [ $o -gt $n ] && [ $o -gt $p ] && [ $o -gt $q ] && [ $o -gt $r ] && [ $o -gt $s ]
then
	echo "HHT is winning combo"
fi
if [ $p -gt $n ] && [ $p -gt $o ] && [ $p -gt $q ] && [ $p -gt $r ] && [ $p -gt $s ]
then
	echo "HTH is winning combo"
fi
if [ $q -gt $n ] && [ $q -gt $o ] && [ $q -gt $p ] && [ $q -gt $r ] && [ $q -gt $s ]
then
	echo "TTT is winning combo"
fi
if [ $r -gt $n ] && [ $r -gt $o ] && [ $r -gt $p ] && [ $r -gt $q ] && [ $r -gt $s ]
then
	echo "THT is wining combo"

fi
if [ $s -gt $n ] && [ $s -gt $o ] && [ $s -gt $p ] && [ $s -gt $q ] && [ $s -gt $r ]
then
	echo "TTH is winning combo"
fi

