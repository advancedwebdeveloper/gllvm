#!/usr/bin/env bash

### Copy vmlinux into the bootable linux folder and install the new kernel
cp $HOME/standalone-build/vmlinux $HOME/bootable-kernel/

cd $HOME/bootable-kernel

scripts/sortextable vmlinux 
nm -n vmlinux | grep -v '\( [aNUw] \)\|\(__crc_\)\|\( \$[adt]\)\|\( .L\)' > System.map
make CC=clang HOSTCC=clang 
sudo make modules_install install