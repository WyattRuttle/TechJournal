#Wyatt Ruttle
# Removes root ability to ssh in
if (( $EUID != 0 )); then 
	echo "Run with sudo privileges"
	exit
fi
if [ ! -z "$1" ]; then
	echo "Creating user $1"
	useradd -m -d /home/$1 -s /bin/bash $1
	mkdir /home/$1/.ssh
	cd /home/$1/.ssh
	wget -O authorized_keys 
	chmod 700 /home/$1/.ssh
	chmod 600 /home/$1/.ssh/authorized_keys
	chown -R $1:$1 /home/$1/
	sed -i 's/PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config
else
	echo "Needs argument" 
	exit
fi 
