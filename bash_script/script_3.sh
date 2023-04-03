#!/bin/bash

#this is a comment

#if commands; then
#  commands
#[elif commands; then
#  commands...]
#[else
#  commands]
#fi

#test expression equal to [ expression ]
#there is also [[ expression ]] => enhanced replacement for test

x=8

if [ "$x" -eq 5 ]; then
    echo 'x equals 5'
else
    echo 'x is not equal to 5'
fi

if [ "$non_existent_variable" ]; then
    echo 'should not print this!'
else
    echo 'no such variable'
fi

str1='abc'
str2='abc'

#for string comparison use = or ==; == is preferred but not posix compliant
if [ "$str1" == "$str2" ]; then
    echo 'str1 and str2 equal'
else
    echo 'str1 not equal to str2'
fi

num1=17
num2=17

#for numeric comparison use -eq
if [ "$num1" -eq "$num2" ]; then
    echo 'num1 and num2 equal'
else
    echo 'num1 not equal to num2'
fi

#(()) => compund command for operating on integers

#combining expressions => for [[ ]] and (( )) use && || !

numy=17

if [[ "$numy" -ge 0 && "$numy" -le 20 ]]; then
    echo 'nunmy is in range'
else
    echo 'numy is not in range!'
fi

#control operators
# command1 && command2 => command1 is executed, and command2 is executed if and only if command1 is successful
# command1 || command2 => command1 is executed and command2 is executed if and only if command1 is Unsuccessful



