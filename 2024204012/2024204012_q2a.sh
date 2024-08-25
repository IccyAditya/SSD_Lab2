#!/bin/bash

a=0
b=1

if [ "$1" -eq 1 ]; then
	echo $a
	exit
elif [ "$1" -eq 2 ]; then
	echo "$a $b"
	exit
fi

echo -n "$a $b"
for i in $(seq 3 $1)
do
	c=$((a+b))
	echo -n " $c"
	a=$b
	b=$c
done
echo
