#!/bin/bash
#Push scipt results through sed
addresses=$("./IpInfo.sh" | sed -n '/IP Address: /p')

echo -e "$addresses"
