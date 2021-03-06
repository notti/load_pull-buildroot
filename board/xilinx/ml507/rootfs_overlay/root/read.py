#!/usr/bin/python
import sys
import csv
import struct

unpacker = struct.Struct('hh')

if len(sys.argv) == 3:
    length = int(sys.argv[2])
else:
    with open('/sys/devices/plb.0/84000000.proc2fpga/depth','r') as f:
        length = int(f.read())

with open(sys.argv[1], 'rb') as f:
    for i in xrange(length):
        im, re = unpacker.unpack(f.read(4))
        print "%s,%s" % (re, im)
