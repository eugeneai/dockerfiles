## Container for organize python pyenv environments
FROM eugeneai/base-devel
MAINTAINER Evgeny Cherkashin <eugeneai@irnok.net>
WORKDIR /root
ADD ./setup-user.sh ./
RUN ./setup-user.sh

ENV HOME /home/python
WORKDIR ${HOME}
ADD ./setup-home.sh ./
RUN chown python:python ${HOME} -R
RUN chmod -R ugo-x,u+rwX,go+rX,go-w ${HOME}
USER python
RUN /usr/bin/bash setup-home.sh

#RUN rm -rf /etc/update-motd.d /etc/motd /etc/motd.dynamic 
#RUN ln -fs /dev/null /run/motd.dynamic

### VOLUME ["/home/python/.pyenv/versions", "/home/python/.pyenv", "/home/python"]
USER root
WORKDIR /
#RUN env
#RUN chown python:python ${HOME} -R
#RUN chmod -R ugo-x,u+rwX,go+rX,go-w ${HOME}

RUN rm -rf /root/setup-*.sh /home/python/setup-*.sh

#USER python
#WORKDIR ${HOME}
RUN /root/root-cache-clean.sh

