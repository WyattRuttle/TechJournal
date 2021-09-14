#!/bin/bash

prefix=$1
port=$2
echo "$prefix,$port"
for i in $(seq 1 255); do
    timeout .1 bash -c "echo >/dev/tcp/$prefix.$i/$port" 2>/dev/null &&
        echo "$prefix.$i,$port"
done

