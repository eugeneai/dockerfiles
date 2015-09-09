## Standard kampka originated archlinux distro
FROM eugeneai/debug
MAINTAINER Evgeny Cherkashin <eugeneai@irnok.net>
ENV HOME /root

RUN pacman -Sy openssh --needed --noconfirm
RUN pacman -S procps iproute2 net-tools --needed --noconfirm

ADD . /build
ADD ./services /services
RUN sh /build/setup.sh

## Expose ports.
EXPOSE 22


