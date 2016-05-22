#!/bin/sh

NO=$1
STATE=$2

if [ "${STATE}" = "on" ];
then

sudo echo ${NO} > /sys/class/gpio/export
sudo echo out > /sys/class/gpio/gpio${NO}/direction
sudo echo 1 > /sys/class/gpio/gpio${NO}/value

else

sudo echo 0 > /sys/class/gpio/gpio${NO}/value
sudo echo ${NO} > /sys/class/gpio/unexport

fi


