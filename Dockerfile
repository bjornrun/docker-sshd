FROM ubuntu

MAINTAINER Bjorn Runaker <bjornrun@gmail.com>

RUN apt-get update && apt-get install -y openssh-server

RUN mkdir -p /var/run/sshd
ADD sshd_config /etc/ssh/sshd_config

CMD /usr/sbin/sshd -D

USER nobody
WORKDIR /tmp
ENV foo "hello"

EXPOSE 2222
