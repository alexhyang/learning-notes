#!/usr/bin/env bash
# source fail.sh until there is STDERR, record the number of runs
# while exit code is 0; loop "execute fail.sh"; n++
# when error occurs, redirect output and error to a different file
# echo "How many runs till it fails: $n"

count=0

until [[ $? -ne 0 ]];
do
  ((count++))
  ./Q3.sh &> Q3-fail-log
done
echo "found error after $count runs"
cat Q3-fail-log
