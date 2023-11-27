#!/bin/bash
###########this script for commpairing 2 files ###################

#exit codes: 
#           normal terminate                 >>> exit 0
#           number of paramters is 2          >> exit 1
#           the content is not the same       >> exit 2



#check number of paramters
[ ${#} -ne 2 ] && echo "NOT enough paramter" && exit 1

FILE1=$(cat ${1})
FILE2=$(cat ${2})

#check the 1st and 2st paramters is files 
[ -f ${1} ]  && [ -f ${2} ] && [ "${FILE1}" != "${FILE2}" ] && echo "the content of 2 files is NOT the same" && exit 2

#check the 1st and 2st paramters is files 
[ -f ${1} ]  && [ -f ${2} ] && [ "${FILE1}" == "${FILE2}" ] && echo "the content of 2 files is the same"

