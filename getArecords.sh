#!/bin/bash

IPLIST="/home/user/Documents/sites.txt"

while read IP; do
	echo "$IP"
    dig +short "$IP" | head -2
    echo ""
done < "$IPLIST" > out.txt