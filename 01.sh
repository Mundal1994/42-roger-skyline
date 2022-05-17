#!/bin/bash

echo "----------" >> /var/log/update_script.log
date >> /var/log/update_script.log
echo " " >> /var/log/update_script.log
apt-get update -y  >> /var/log/update_script.log 2>&1
apt-get --with-new-pkgs upgrade -y >> /var/log/update_script.log 2>&1
apt-get install --only-upgrade ufw >> /var/log/update_script.log 2>&1
apt-get install --only-upgrade sudo >> /var/log/update_script.log 2>&1
apt-get install --only-upgrade fail2ban >> /var/log/update_script.log 2>&1
apt-get install --only-upgrade portsentry >> /var/log/update_script.log 2>&1
apt-get install --only-upgrade bsd-mailx >> /var/log/update_script.log 2>&1
apt-get install --only-upgrade postfix >> /var/log/update_script.log 2>&1
apt-get install --only-upgrade mutt >> /var/log/update_script.log 2>&1
