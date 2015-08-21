#!/usr/bin/python
import sys
import csv
import smmap

if len(sys.argv) == 3:
    length = int(sys.argv[2])
else:
    with open('/sys/devices/plb.0/84000000.proc2fpga/depth','r') as f:
        length = int(f.read())

if sys.argv[1][-1] != '0':
    length *= 2

f = open(sys.argv[1], 'r+')
data = smmap.mmap(f.fileno(), length, 'h')
f.close()
if sys.argv[1][-1] != '0':
    for i in xrange(length):
        print "%s,%s" % data[i*2:i*2+2]
else:
    for i in xrange(length):
        print "%s" % (data[i])
data.close()
