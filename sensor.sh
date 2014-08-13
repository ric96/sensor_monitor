#!/bin/bash
clear
flag=0
echo "Do You Want To Enable Voltage Sensors? (y/n)"
read ans
echo " "
echo "Enter Refresh Interval in Seconds:"
read x
while true
do
 echo "CPU CLOCK ( MHZ )"
 cat /proc/cpuinfo | grep "cpu MHz"
 echo " "
 echo "CPU TEMPERATURE:"
 sensors | grep -i -e "Physical" -e "Core"
 echo " "
 echo "FAN SPEED"
 sensors | grep "fan"
 echo " "
 echo "HARDWARE TEMPERATURE"
 sensors | grep "temp"
 echo " "
 if test $ans = "y" ; then
  echo "INPUT VOLTAGES"
  sensors | grep "in[0-9]"
 fi
 sleep $x
 clear
done
