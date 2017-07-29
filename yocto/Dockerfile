FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -y install locales

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get -y install gawk wget git-core diffstat unzip texinfo gcc-multilib \
build-essential chrpath socat cpio python python3 python3-pip python3-pexpect \
xz-utils debianutils iputils-ping vim nano

RUN useradd -ms /bin/bash yoctobuilder

USER yoctobuilder
WORKDIR /home/yoctobuilder/

COPY run.sh /home/yoctobuilder/
ENTRYPOINT ["./run.sh"]
