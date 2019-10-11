#!/bin/sh

: "${URL:?URL needs to be set}"
: "${INTERVAL:?INTERVAL needs to be set}"

while :; do
	for i in $URL ; do
		curl $i/wp-cron.php > /dev/null
	done
	sleep $INTERVAL
done

