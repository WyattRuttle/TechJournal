#!/bin/bash


prefix=$1
port=$2
nmap $prefix.1-254 -Pn -p $port --open | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > dns-servers.txt



