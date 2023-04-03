#!/bin/bash

#this is a comment

#func must be defined before its called
function funky {
    echo 'inside funky'
    return
}

#func must be defined before its called
another_funky() {

    #local variable my_var for another_funky scope
    local my_var
    my_var=5
    echo 'inside another funky'
    return
}

TITLE="something something $HOSTNAME"

#this declares a constant r for read-only
declare -r CONSTANT_EXAMPLE='THIS IS A CONSTANT'

echo "$TITLE"

#how to capture output of a command
my_var=$(pwd)

echo "my_var = $my_var"

funky
another_funky

