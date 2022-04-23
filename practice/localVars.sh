#! /usr/bin/bash

function print(){
    name=$1     # global variable
    echo "the name in $name 2"
}

name="tom"      # global variable
echo "the name in $name 1"

print Max
echo "the name in $name 3"  # global variable name has changed in print function

echo

function print(){
    local name=$1     # now it's local variable
    echo "the name in $name 5"
}

name="maliha"      # global variable
echo "the name in $name 4"

print farhana
echo "the name in $name 6"  # global variable name has not changed in print function