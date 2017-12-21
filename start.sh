#!/bin/sh

echo $(date "+%Y/%m/%d %H:%M:%S")
/usr/bin/nohup /usr/bin/cpulimit -l 190 -- /usr/local/bin/minerd -a yescrypt -o stratum+tcp://[ip or host]:[port] -u [user] -p [password]
echo "started!"
