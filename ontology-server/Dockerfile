## Container for organize python pyenv environments
FROM eugeneai/base-devel
MAINTAINER Evgeny Cherkashin <eugeneai@irnok.net>

RUN useradd -ms /bin/bash -G wheel prolog
RUN echo prolog:prolog111 | chpasswd
RUN chown prolog:prolog /home/prolog

ENV HOME /home/prolog
USER prolog
WORKDIR ${HOME}

#RUN yaourt -Sy uuid --noconfirm --needed
ADD uuid /build
RUN cd /build && makepkg -si
RUN yaourt -S swi-prolog-devel --noconfirm --needed

RUN yaourt -S git screen --noconfirm --needed
# RUN mkdir src && cd src

EXPOSE 3030
RUN git clone --recursive https://github.com/ClioPatria/ClioPatria.git
# RUN git clone --recursive https://github.com/SWI-Prolog/pengines.git
RUN echo
RUN git clone https://github.com/eugeneai/ontology-server.git
#### VOLUME ["/home/prolog/ontology-server/RDF-store","/home/prolog/ontology-server/data"]

RUN chmod -R ugo-x,u+rwX,go+rX,go-w ${HOME}

USER root
WORKDIR /
RUN sed -i '/\# INSERT/icd /home/prolog/ontology-server' /services/sshd/run
RUN sed -i '/\# INSERT/isudo -u prolog /bin/bash /home/prolog/ontology-server/run.sh' /services/sshd/run
RUN /root/root-cache-clean.sh


