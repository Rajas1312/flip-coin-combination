#!/bin/bash -x
echo "program on coin flip combination"

if [ $((RANDOM%2)) -eq 0 ]
then
	echo "heads"
else
	echo "Tails"
fi
