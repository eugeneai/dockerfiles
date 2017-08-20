## Container to debug archlinux containers
FROM eugeneai/archlinux
MAINTAINER Evgeny Cherkashin <eugeneai@irnok.net>
ENV HOME /root

RUN pacman -Sy procps iproute2 net-tools mc zile nano --needed --noconfirm
RUN /root/root-cache-clean.sh

