#!/bin/bash
clear
flag=0
echo "Do You Want To Enable Voltage Sensors? (y/n)"
read ans
echo " "
echo "Enter Refresh Interval in Seconds: (less than 0.1 may cause flickering)"
read x
while true
do
 cpuclk=$(cat /proc/cpuinfo | grep "cpu MHz")
 cputmp=$(sensors | grep -i -e "Physical" -e "Core")
 cpuuse=$()
 fanspd=$(sensors | grep "fan")
 hddtmp=$(sensors | grep "temp")
 inpvlt=$(sensors | grep "in[0-9]")
 clear
 echo "CPU USAGE"
 mpstat -P ALL
 echo " "
 echo "CPU CLOCK ( MHZ )"
 echo "$cpuclk"
 echo " "
 echo "CPU TEMPERATURE:"
 echo "$cputmp"
 echo " "
 echo "FAN SPEED"
 echo "$fanspd"
 echo " "
 echo "HARD DRIVE TEMPERATURE"
 echo "$hddtmp"
 echo " "
 if test $ans = "y" ; then
  echo "INPUT VOLTAGES"
  echo "$inpvlt"
 fi
 sleep $x
done
