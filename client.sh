#!/bin/sh

qemu-system-x86_64 \
	-enable-kvm \
	-cpu host \
	-smp 4 \
	-machine q35 \
	-m 4G \
	-nic user,hostfwd=tcp::3022-:22 \
	-drive file=server.qcow2,format=qcow2
