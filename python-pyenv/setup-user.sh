#!/bin/bash
pacman -Sy base-devel python-virtualenv --noconfirm --needed
pacman -S sudo git --noconfirm --needed
echo "python ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
useradd -m -u 900 -r -s /usr/bin/bash python
#groupadd -g 900 python
chown python:python /home -R
# Temporal password for ssh, should be changed
echo "python:python111" | chpasswd 

