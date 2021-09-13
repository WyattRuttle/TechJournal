sudo nmap -sn 10.0.5.2-50 | awk '/is up/ {print up}; {gsub (/\(|\)/,""); up = $NF}'> sweep.txt
