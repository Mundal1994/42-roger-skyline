#!/bin/bash

cat /dev/null > /var/log/update_script.log
date >> /var/log/update_script.log
echo "begin update" >> /var/log/update_script.log
apt-get update -y  >> /var/log/update_script.log 2>&1
echo "end update" >> /var/log/update_script.log
echo "begin upgrade" >> /var/log/update_script.log
apt-get upgrade -y >> /var/log/update_script.log 2>&1
echo "end upgrade" >> /var/log/update_script.log
