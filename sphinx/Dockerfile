## Container for organize python pyenv environments
FROM eugeneai/python-pyenv
MAINTAINER Evgeny Cherkashin <eugeneai@irnok.net>
USER python
WORKDIR ${HOME}

RUN sudo pacman -Sy git --noconfirm --needed
RUN cd ${HOME} 
RUN pwd
RUN ls -al
RUN git clone https://github.com/eugeneai/sphinx-arch-beta.git sphinx
WORKDIR ${HOME}/sphinx
RUN yes | makepkg -s
RUN sudo pacman -U `ls *.tar.xz` --noconfirm
WORKDIR ${HOME} 
RUN rm -rf sphinx
##### VOLUME ["/home/python/.pyenv/versions", "/home/python/.pyenv", "/home/python"]

USER root
WORKDIR /
#RUN chown python:python ${HOME} -R
#RUN chmod -R ugo-x,u+rwX,go+rX,go-w ${HOME}

#USER python
#WORKDIR ${HOME}
