#!/bin/bash

n=1

#echoerr() { echo "$@" 1>&2; }

while [[ $n -lt 10 ]]; do
  echo "$n `date`"
  thisCommandDoesntExist
  n=$((n+1))
  sleep 1
done

echo "This command should succeed"
sleep 1
foo  # This command should fail
sleep 1
bar  # This command should fail
sleep 1
echo "This commnd should succeed"