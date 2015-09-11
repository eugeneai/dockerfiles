## Container to debug archlinux containers
FROM eugeneai/ssh-server
MAINTAINER Evgeny Cherkashin <eugeneai@irnok.net>
ENV HOME /root

RUN pacman -Syu procps iproute2 net-tools mc zile nano websvn php php-apache grep --needed --noconfirm

RUN groupadd -g 977 git && useradd -g git -u 977 -d /git -m -r -s /usr/bin/bash git #git-shell git
RUN groupadd -g 976 bzr && useradd -g bzr -u 976 -d /bzr -m -r -s /usr/bin/bash bzr
RUN groupadd -g 975 svn && useradd -g svn -u 975 -d /svn -m -r -s /usr/bin/bash svn
RUN gpasswd -a http svn

RUN pacman -S git bzr subversion apache --needed --noconfirm

RUN echo "git:git" | chpasswd && echo "bzr:bzr" | chpasswd && echo "svn:svn" | chpasswd

RUN rm -rf /etc/update-motd.d /etc/motd /etc/motd.dynamic 
RUN ln -fs /dev/null /run/motd.dynamic

ADD ./services /services
ADD ./etc /etc
ADD ./srv /srv
RUN echo "Include conf/httpd-local.conf" >> /etc/httpd/conf/httpd.conf
RUN sed -i -e 's/^\(.*mpm_event_module.*\)$/#\1/' /etc/httpd/conf/httpd.conf
RUN mkdir /run/httpd && chown http:http /run/httpd


VOLUME ["/git", "/bzr", "/svn"]


