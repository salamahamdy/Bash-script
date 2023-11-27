#!/bin/bash
#################this script for division two numbers and return result#############
#exit codes :
#           normal terminate   >>> exit 0
#           NUM2 equal zero    >>> exit 1
#           NUM1 is not integer>>> exit 2
#           NUM2 is not integer>>> exit 3

NUM1=${1}
NUM2=${2}

#check NUM1 is integer 
VAL=$(echo "${NUM1}" | grep -c "^-\{0,1\}[0-9]*$")
[ $VAL -eq 0 ] && echo "the 1st paramter is not integer" && exit 2

#check NUM1 is integer
VAL=$(echo "${NUM2}" | grep -c "^-\{0,1\}[0-9]*$")
[ $VAL -eq 0 ] && echo "the 2st paramter is not integer" && exit 3

#check if NUM2 is equal zero
[ $NUM2 -eq 0 ] && echo "Invalid argument for 2st paramter" && exit 1

#do DIV operation 
DIV=$[ NUM1 / NUM2 ]
echo "the result of Division= ${DIV}"

#print PID for process
echo "the PID = ${$}"

#print array of paramters
echo "the array of paramters you entered is ${@}"

#print the number of argument 
echo "the number of argument = ${#}"



exit 0

