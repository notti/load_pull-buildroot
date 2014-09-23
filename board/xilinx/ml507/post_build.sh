#!/bin/sh

#copy vmlinux to /boot for reboot functionality
mkdir $1/boot/
cp $2/vmlinux $1/boot/
