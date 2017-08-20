#!/bin/sh

#pacman -Sy openssh --needed --noconfirm

#RUN /etc/my_init.d/00_regen_ssh_host_keys.sh -f                           # Uncomment to Enable SSHD
#CMD ["/sbin/my_init"]

## Expose ports.
#EXPOSE 22

## Application specific part

## Setup service
# Setup a git user and SSH
#RUN groupadd -g 987 git && useradd -g git -u 987 -d /git -m -r -s /usr/bin/git-shell git
sed -i -e 's/.*LogLevel.*/LogLevel VERBOSE/' -e 's/#*PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config
sed -i -e 's/.*UsePAM.*/UsePAM no/' /etc/ssh/sshd_config
sed -i -e 's/.*UseDNS.*/UseDNS no/' /etc/ssh/sshd_config
#Set a long random password to unlock the git user account
#RUN usermod -p `dd if=/dev/urandom bs=1 count=30 | uuencode -m - | head -2 | tail -1` git

## Remove /etc/motd
#RUN rm -rf /etc/update-motd.d /etc/motd /etc/motd.dynamic 
#RUN ln -fs /dev/null /run/motd.dynamic

touch /var/log/lastlog

#mv /build/sshd /services
#rm -rf /services/sshd/log/
#rm -rf /services/sshd/supervise/

## Clean up
#pacman -Scc --noconfirm
rm -rf /build
/root/root-cache-clean.sh
