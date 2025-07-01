#!/bin/sh

qemu-system-x86_64 \
	-enable-kvm \
	-cpu host \
	-smp 2 \
	-machine q35 \
	-m 1G \
	-nic user,hostfwd=tcp::2022-:22,hostfwd=tcp::2080-:80 \
	-drive file=server.qcow2,format=qcow2
