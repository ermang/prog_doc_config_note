#!/bin/bash

#this is a comment

#read [-options] [variable...]

echo 'type something and press enter'
read my_var
echo "you typed $my_var"

#while example

count=1

while [[ "$count" -le 5 ]]; do
    echo "$count"
    count=$((count + 1))
done

#until example

count=1

until [[ "$count" -gt 5 ]]; do
    echo "$count"
    count=$((count + 1))
done

#for example

#for variable [in words]; do       words is an optional list of items that will be sequentially assigned to variable
#  commands
#done

for i in A B C D; do
    echo "$i"
done

#for example second form

#for (( expression1; expression2; expression3 )); do           expr1 2 3 are arithmetic expressions
#  commands
#done

for (( i=0; $i<5; i=i+1 )); do
    echo $i
done

