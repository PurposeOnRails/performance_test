#!/bin/bash

for RATE in 5 10 15 20 25 30 35
do
 echo "starting artillery with $RATE..."
 artillery run  benchmark.yml --overrides \
 "{\"config\": {\"phases\": [{\"duration\": 300, \"arrivalRate\": $RATE}]}}" \
 -t $1 \
 >> bench_$2_$RATE.txt
done


