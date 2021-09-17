#!/bin/bash/
prefix=$1
dns=$2
echo "dns resolution for "$prefix
for ip in $(seq 1 254); do
	(nslookup $prefix.$ip $dns | grep 'name')
done

