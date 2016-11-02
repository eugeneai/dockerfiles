## Standard kampka originated archlinux distro
FROM eugeneai/debug
#FROM eugeneai/archlinux
MAINTAINER Evgeny Cherkashin <eugeneai@irnok.net>
ENV HOME /root

RUN pacman -Sy openssh --needed --noconfirm procps iproute2 net-tools sudo --needed --noconfirm
RUN echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

ADD . /build
ADD ./services /services
RUN sh /build/setup.sh

## Expose ports.
EXPOSE 22
#CMD /services/sshd/run
CMD ["/services/sshd/run"]
RUN /root/root-cache-clean.sh
