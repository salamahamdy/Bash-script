#!/bin/bash 
#####################this script for adding 2 number and return the sum#########
# exit codes :
#          normal terminate    >> exit 0
#	   NOT enought parmter >> exit 1
#          NUM1 is not integer >> exit 2
#          NUM2 is not integer >> exit 3

NUM1=${1}
NUM2=${2}

#check that number of argument is equal 2
[ ${#} -ne 2 ]  && echo "NOT enough paramter" && exit 1

#check that NUM1 is integer 
VAL=$(echo ${NUM1} | grep -c "^-\{0,1\}[0-9]*$")
[ $VAL -eq 0 ] && echo "the 1st paramter is not integer" && exit 2

#check that NUM2 is integer
VAL=$(echo ${NUM2} | grep -c "^-\{0,1\}[0-9]*$")
[ $VAL -eq 0 ] && echo "the 2st paramter is not integer" && exit 3
SUM=$[ NUM1 + NUM2 ]
echo "result = ${SUM}"

#print number of paramters 
echo "the number of paramter = ${#}"

#print array of paramters you enterd 
echo "the array of paramter you enterd is ${@}"

#print PID of this process
echo "the PID = ${$}"
exit 0
