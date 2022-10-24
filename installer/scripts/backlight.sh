#!/bin/bash
/usr/bin/raspi-gpio set 22 op dh

echo "4" > /sys/class/gpio/export
echo "22" > /sys/class/gpio/export

state=1

for (( ; ; ))
do
    if [ `cat /sys/class/gpio/gpio4/value` -eq '0' ]
    then
        ((state ^= 1))
        echo $state > /sys/class/gpio/gpio22/value
        sleep 0.2
    fi
    sleep 0.1
done
