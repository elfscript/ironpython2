#!/bin/bash
groupadd -g 1000 elf && useradd -m -g 1000 -u 1000 elf
cat /etc/passwd |grep elf
ln -s /mnt/work/libunwind.so.8 /usr/lib/x86_64-linux-gnu/libunwind.so.8
ln -s /mnt/work/libunwind.so.8 /usr/lib/x86_64-linux-gnu/libunwind-x86_64.so.8
su elf
