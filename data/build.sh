#!/bin/bash
 
sudo apt-get update
# sudo apt-get install locales && \
# sudo locale-gen
# sudo apt-get install curl 

export HOME=/home
echo "LANG=en_US.utf-8
LC_ALL=en_US.utf-8" >> /etc/environment
# export DEBIAN_FRONTEND=noninteractive







# set the falgs lacations :
# for the root 

# manager

# employee 







# apache2 server ==> port 80 ==> www-data 
# /etc/init.d/ ==> is like where all the services are located 
sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install php
# /etc/php/7.4/apache2/php.ini






sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install apache2 

sudo cp -r $HOME/data/html /var/www/ && \
sudo cp $HOME/data/configurations/apache2/apache2.conf /etc/apache2 && \
sudo cp $HOME/data/configurations/apache2/ports.conf /etc/apache2 && \
sudo cp $HOME/data/configurations/apache2/000-default.conf /etc/apache2/sites-enabled

sudo service apache2 enable
sudo service apache2 start







sudo apt install -y vsftpd
sudo cp $HOME/data/configurations/ftp/vsftpd.conf /etc/
	# allow anonymous ?? yes 
	# login name (anonymous) && passwd ?? 
	# local_enable=YES
sudo ufw allow 20/tcp
sudo ufw allow 21/tcp

sudo service vsftpd enable
sudo service vsftpd start
 







# uncomplicated firewall # https://help.ubuntu.com/community/UFW
sudo apt-get install -y ufw









sudo DEBIAN_FRONTEND=noninteractive apt-get install -y openssh-server

#/etc/ssh/sshd_config
	:'PermitRootLogin prohibit-password' # ==> to prevent the root connection
	# login with password ??? or ssh_key ???
		:'PasswordAuthentication yes/no'
		# if you disable password authentication, it will only be possible to connect from computers you have specifically approved. 
		# This massively improves your security, but makes it impossible for you to connect to your own computer from a friend's PC without pre-approving the PC,
		# or from your own laptop when you accidentally delete your key.

	# port forwarding ?? X11 forwarding ?? 
		:'AllowTcpForwarding no'
		:'X11Forwarding no'

	# Specify the users ??
		:'AllowUsers user1 user2' ## allow just user1 & 2 
		# OR 
		:'DenyUsers user1 user2' ## allow every one except user1 & 2

	# Rate-limit the connections ?? ==> 10 'tries' of a certain IP in '30' seconds 
		:'$ sudo ufw limit ssh'  
		# the connections will be DROPped when fail

	# If you want to record more information - such as failed login attempts ??
		:'LogLevel VERBOSE' # ==> all saved on @@@@@@ /var/log/auth.log @@@@@@   

	# Banner ==> to scare novice attackers
		:'Banner /etc/issue.net' # edit the file content ^^

sudo service ssh enable
sudo service ssh start












# "*" means password never established && Both "!" and "!!" being present in the password field mean an account is locked. ==>  means the account of an user has been created, but not yet given a password

# cuz we don't wanna creat a new user whenver we ran the sctipt 
# sudo deluser user222 
# sudo delgroup user222 
# sudo useradd -m user222 -p user222 -G sudo
#set the root password


# https://linuxize.com/post/how-to-create-users-in-linux-using-the-useradd-command/
# create a new users    # the pass must be encrypted to not be acessed from th /etc/shadow

# useradd -p [encrypted pass] -s [usr/bin/sh] -G [wheel,developers] -m [username]




# with Specific Login Shell 

# and Assign Multiple Groups

# with Specific Group ID



# HIIIIIIIIIIIIIIIIIIIII





# /bin/bash: warning: setlocale: LC_ALL: cannot change locale (en_US.UTF-8)