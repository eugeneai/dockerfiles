## Standard phusion part
FROM eugeneai/archlinux
MAINTAINER Evgeny Cherkashin <eugeneai@irnok.net>
ENV HOME /root

ADD . /build
#ADD ../runit-services/etc/sv/sshd/ /build/etc/sv/sshd/

RUN pacman -Sy openssh --needed --noconfirm

RUN sh /build/setup.sh

## Expose ports.
EXPOSE 22


