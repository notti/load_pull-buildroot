#!/usr/bin/python

import csv
import sys
import struct

values = []

with open(sys.argv[1],'r') as f:
    vals = csv.reader(f)
    for row in vals:
    	try:
    	   real, imag = row
    	except:
    	   real = row[0]
    	   imag = 0
    	real, imag = int(real), int(imag)
    	values.append((real, imag))

print sys.argv[2],"=",values[:4]

if sys.argv[2] == 'x':
   n = '/dev/emce0'
   packer = struct.Struct('h')
else:
   n = '/dev/emce1'
   packer = struct.Struct('hh')
if sys.argv[2] == 'y':
   n = '/dev/emce2'

with open(n, 'wb') as f:
   for val in values:
       if sys.argv[2] == 'x':
          val = packer.pack(val[0])
       else:
          val = packer.pack(val[1],val[0])
       f.write(val)
