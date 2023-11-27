#!/bin/bash
###########this script to check that two numbers is equal or not #####


#exit codes:
#     normal terminate             >>> exit 0
#     not enough paramters         >>> exit 1
#     1st paramter is not integer  >>> exit 2
#     2st paramter is not integer  >>> exit 3
#     the 1st and 2st paramters not equal each other >>> exit 4

NUM1=${1}
NUM2=${2}

#check number of paramter equal 2
[ ${#} -ne 2 ] && echo "NOT enough paramter" && exit 1

#check 1st paramter is integer 
VAL=$(echo "${NUM1}" | grep -c "^-\{0,1\}[0-9]*$")
[ $VAL -eq 0 ] && echo "the 1st paramter is not number" && exit 2

#check 1st paramter is integer
VAL=$(echo "${NUM2}" | grep -c "^-\{0,1\}[0-9]*$")
[ $VAL -eq 0 ] && echo "the 2st paramter is not number" && exit 3

#check if the two paramters are equal each other or not
[ $NUM1 != $NUM2 ] && echo "the ${NUM1} is NOT equal ${NUM2}" && exit 4

[ $NUM1 == $NUM2 ]  && echo "the ${NUM1} is equal ${NUM2}" 

#print PID 
echo "PID for this process is = ${$}"

#print array of paramters 
echo "array of paramters is = ${@}"

#print number of paramters 
echo "the number of paramters = ${#}"

exit 0


