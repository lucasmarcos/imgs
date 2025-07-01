#!/bin/sh

qemu-system-x86_64 \
	-enable-kvm \
	-cpu host \
	-smp 2 \
	-machine q35 \
	-m 1G \
	-nic user,hostfwd=tcp::3022-:22 \
	-drive file=client.qcow2,format=qcow2
