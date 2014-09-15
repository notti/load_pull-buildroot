#!/bin/sh

echo 1 > /sys/devices/plb.0/84000000.proc2fpga/req
while [ `cat /sys/devices/plb.0/84000000.proc2fpga/req` -eq "0" ]; do :; done
/root/load.py $1 $2
echo 0 > /sys/devices/plb.0/84000000.proc2fpga/req
