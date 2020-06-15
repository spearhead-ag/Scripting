# ============================================= #
# This script uses filters informtion using sed #
# ============================================= #
#!/bin/bash
#set -x

#get info about networking from the ifconfig command
net_info="$(/sbin/ifconfig)"

#parse out the ip address lines using sed
addresses=$(echo "$net_info" | sed -n '/inet / {
s/inet/IP Address:/
s/netmask/\n\t\tSubnet Mask:/
s/broadcast/\n\t\tBroadcast Address:/
p
}')

#format output
echo -e "IP addresses on this computer are:\n$addresses"