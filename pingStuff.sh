#!/bin/bash
for i in $(seq 2 50);
do ping 10.0.5.$i -c1 & done | grep -o "from 10.0.5.*" | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}
