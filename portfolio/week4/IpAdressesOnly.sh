#!/bin/bash

addresses=$("./IpInfo.sh" | sed -n '/IP Address: /p')

echo -e "$addresses"