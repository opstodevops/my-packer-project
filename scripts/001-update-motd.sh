#!/bin/sh

/usr/bin/cat << __EOF > /etc/motd
|-----------------------------------------------------------------|
| WARNING: This computer system is for the use of authorized users|
| only. Individuals using this computer system are subject to     |
| having all of their activities on this system monitored and     |
| recorded.                                                       |
|                                                                 |
|                                                                 |
|-----------------------------------------------------------------|

*** BUILT BY PACKER ***
__EOF
/usr/bin/chown root:root /etc/motd 
/usr/bin/chmod 644 /etc/motd
