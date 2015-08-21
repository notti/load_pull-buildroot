echo 200 > /sys/devices/plb.0/84000000.proc2fpga/depth
echo 0 > /sys/devices/plb.0/84000000.proc2fpga/core/iq
echo 0 > /sys/devices/plb.0/84000000.proc2fpga/core/circular
echo 64 > /sys/devices/plb.0/84000000.proc2fpga/core/n
echo 23 > /sys/devices/plb.0/84000000.proc2fpga/core/L
echo 000000010101 > /sys/devices/plb.0/84000000.proc2fpga/core/scale_sch
/root/load.py /root/H_rect.csv H
/root/load.py /root/x.csv x
