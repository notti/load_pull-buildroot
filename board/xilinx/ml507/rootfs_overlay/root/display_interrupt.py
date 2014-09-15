#!/usr/bin/python
import select
import sys

with open(sys.argv[1], "r") as f:
    p = select.poll()
    p.register(f, select.POLLPRI | select.POLLERR)
    while 1:
        f.seek(0)
        f.read()
        p.poll()
        print sys.argv[1], " fired!"

 
