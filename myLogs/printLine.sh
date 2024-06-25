#!/bin/bash


function print_out
{
    echo "test to stdout"
}


function print_err
{
    echo "test to stderr" >&2
}

while true
do
  print_out >> ../worker-logs/stdoutFile.txt
  print_err 2>> ../worker-logs/stderrFile.txt
  sleep 5
done

#while true
#do
#  docker logs -f dockerversion-my_worker_c-1 2>../worker-logs/err.log 1>../worker-logs/out.log
#  sleep 5
#done

exit 0
