## Container to debug archlinux containers
FROM eugeneai/ssh-server
MAINTAINER Evgeny Cherkashin <eugeneai@irnok.net>
ENV HOME /root

RUN pacman -Syu procps iproute2 net-tools mc zile nano --needed --noconfirm
RUN pacman -S git bzr subversion apache --needed --noconfirm

RUN groupadd -g 987 git && useradd -g git -u 987 -d /git -m -r -s /usr/bin/git-shell git
RUN usermod -p git git 

RUN rm -rf /etc/update-motd.d /etc/motd /etc/motd.dynamic 
RUN ln -fs /dev/null /run/motd.dynamic

VOLUME ["/git"]


