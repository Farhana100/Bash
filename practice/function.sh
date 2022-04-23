#! /usr/bin/bash

# method 1
# function name(){
#     commands
# }

# method 2
# name () {
#     commands
# }

function Hello(){
    echo "Hello from Hello function"
}

quit () {
    exit
}

Hello   # call Hello


# passing param -> can take any number of parameters 

function print() {
    echo "print start"
    echo $1 $2 $3
    echo "print end"
    echo
}

print Hello World Again
print Hello farhana
print 
print Hello this is a test with more than required params       # rest of the parameters are simply not used in the function

quit    # quit script

echo "shouldn't echo"