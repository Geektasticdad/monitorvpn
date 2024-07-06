# Purpose
Script created to monitor Open VPN by pinging Google DNS. If the ping response is dead, it will restart openvpn client.

# Cron Job Entry
*/15 * * * * root /etc/openvpn/monitorvpn.sh
