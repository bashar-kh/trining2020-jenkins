ARG version=latest
FROM fedora:${version}
RUN dnf -y install wget fedora-packager @development-tools && dnf clean all
RUN useradd -m bkhuser
RUN usermod -a -G mock bkhuser
USER bkhuser
WORKDIR /home/bkhuser
CMD [ "/bin/bash" ]
