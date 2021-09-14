#!/bin/bash

netprefix=$1
porttcp=$2
echo "$netprefix,$porttcp"
for i in $(seq 1 255); do
    timeout .1 bash -c "echo >/dev/tcp/$netprefix.$i/$porttcp" 2>/dev/null &&
        echo "$netprefix.$i,$porttcp"
done

