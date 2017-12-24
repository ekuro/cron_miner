#!/bin/sh

nlines=$(ps aux | grep /usr/local/bin/minerd | wc -l)
echo $nlines
if [ $nlines -gt 1 ]; then
        echo  $(date "+%Y/%m/%d %H:%M:%S") " already started!"
else
        /usr/bin/nohup /usr/local/bin/minerd -a yescrypt -o stratum+tcp://[ip or host]:[port] -u [user] -p [password] &
        echo  $(date "+%Y/%m/%d %H:%M:%S") " started!"
fi
