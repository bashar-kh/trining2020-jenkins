FROM fedora:latest
RUN dnf -y install fedora-packager @development-tools && dnf clean all
RUN useradd -m bkhuser
USER bkhuser
WORKDIR /home/bkhuser
RUN usermod -a -G mock bkhuser
CMD [ "/bin/bash" ]
