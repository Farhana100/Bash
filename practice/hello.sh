#! /usr/bin/bash
# bash interprets i.e does not compile
# this is a comment

# use echo to print stuff on screen
echo "hello world"
echo hello world    # also works  

# Variables: two types
#               - system variable: created and maintained by Linux or Unix os. Predefined. Conventionally in uppercase.
#               - user defined variable: programmer creates

# some sys var
echo $BASH              # bash dir
echo $BASH_VERSION      # bash version
echo $HOME              # home dir
echo $PWD               # Present Working Dir

# some user defined var
name=Maliha             # declaration. cannot use any spaces in-between
echo $name 
echo My name is $name
echo "My name is" $name

stdId=100
echo My student ID is $stdId

# take terminal input
echo Enter name:
read Name               # creates new var
echo "Your name is " $name
echo "Your name is " $Name
echo Enter student Id:
read stdId              # reused/ overwritten
echo Your student id is $stdId

# take multiple inputs
echo Enter names:
read name1 name2 name3      # use spaces in terminal to separate inputs. Cannot use newline
echo "Names: $name1, $name2, $name3"

# take input in the same line as the prompt text (which is echoed before taking input)
read -p 'username: ' user_var       # use p flag
echo "username: $user_var"

read -sp 'password: ' password      # s flag for silent, p flag for same prompt
echo                                # newline
echo "password is $password"

# read array from terminal -> flag: -a
echo "Enter names: "
read -a names                       # read an array 
echo "Names: ${names[0]}, ${names[1]}"      # use curly braces to access array elements

# read with $REPLY variable
echo "say whatever: "
read                # scans input and stores it into the sys var $REPLY 
                    # inputs can be multispaced 
echo $REPLY         

# pass arguments to a bash scripts 

echo $0, $1, $2, $3 ' are the command line arguments passed with the file name'

# as array
args=("$@")

echo ${args[0]}, ${args[1]}, ${args[2]}, ${args[3]}
echo all command line arguments are $@

# print the number of arguments passed
echo no. of args passed $#
