import select

f = open('/sys/devices/plb.0/84000000.proc2fpga/int/avg_done', 'r')
p = select.poll()
p.register(f, select.POLLERR | select.POLLPRI)
while 1:
	f.seek(0)
	f.read()
	print p.poll()
	print 'fired!'
