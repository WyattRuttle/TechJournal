#!/bin/bash


prefix=$1
dnsserv=$2

for i in $(seq 1 255); do
    nslookup $prefix.$i $dnsserv | grep "name"
done


