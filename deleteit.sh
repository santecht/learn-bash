#!/usr/bin/env bash
echo "Scritp name " $(basename $0)
echo "Process id " $$
whotest[0]='test' || (echo 'Failure: arrays not supported in this version of bash.' && exit 2)
attribute=( one two three )
for a in ${attribute[@]};
   do str+="\"$a\" , "; echo "${str}"; done;
   str="${str% , }"
   echo "[$str]"

week=0`date '+%W'`0    	# The week of the year (0..53).
echo $week
week=${week#0}       	# Remove possible leading zero.
echo $week

<<EOF
out of above script
Scritp name  deleteit.sh
Process id  22693
"one" , 
"one" , "two" , 
"one" , "two" , "three" , 
["one" , "two" , "three"]
0040
040

>>>
