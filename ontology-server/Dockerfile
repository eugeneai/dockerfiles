## Container for organize python pyenv environments
FROM eugeneai/ssh-server
MAINTAINER Evgeny Cherkashin <eugeneai@irnok.net>

RUN useradd -ms /bin/bash -G wheel prolog
RUN echo prolog:prolog111 | chpasswd
RUN chown prolog:prolog /home/prolog


ENV HOME /home/prolog
USER prolog
WORKDIR ${HOME}
RUN yaourt -Sy base-devel --noconfirm --needed
RUN yaourt -S uuid --noconfirm --needed
RUN yaourt -S swi-prolog-devel --noconfirm --needed

RUN yaourt -S git --noconfirm --needed
RUN mkdir src && cd src
RUN git clone https://github.com/eugeneai/ontology-server.git
RUN git clone --recursive https://github.com/ClioPatria/ClioPatria.git
RUN git clone --recursive https://github.com/SWI-Prolog/pengines.git

RUN chmod -R ugo-x,u+rwX,go+rX,go-w ${HOME}

# VOLUME ["/home/python/.pyenv/versions", "/home/python/.pyenv", "/home/python"]
USER root
WORKDIR /
RUN /root/root-cache-clean.sh

VOLUME ["/home/prolog/ontology-server/RDF-store","/home/prolog/ontology-server/data"]
EXPOSE 3030

