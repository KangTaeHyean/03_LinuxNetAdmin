#!/bin/bash

TMP=/tmp/tmp1

echo "/etc/httpd/conf/httpd.conf" > /tmp/tmp1
ls -1 /etc/httpd/conf.d/*.conf >> /tmp/tmp1

for i in $(cat $TMP)
do
	echo "===== $i ====="
	[ -f $i ] && cat $i | egrep -nv '^#|^$|#.*'
	echo ; echo
done
