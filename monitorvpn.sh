#!/bin/sh

# -q quiet
# -c nb of pings to perform

ping -c1 8.8.8.8 > /dev/null 2>&1

if [ $? -eq 0 ]
  then
      echo "$(date '+%Y-%m-%d %H:%M:%S') - Open VPN client is ok on " $(hostname -s) >> /var/log/openvpn.log
  else
# When we restart the NIC we also need to run a dhclient to get our (fixed) IP address:

            systemctl restart openvpn

    echo "$(date '+%Y-%m-%d %H:%M:%S') - Open VPN restarted on " $(hostname -s) >> /var/log/openvpn.log

fi
