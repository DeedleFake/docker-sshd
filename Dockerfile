FROM alpine
MAINTAINER DeedleFake <deedlefake@hotmail.com>

RUN apk update
RUN apk add openssh

COPY genhostkey /usr/local/bin/genhostkey
COPY sshd_config /srv/ssh/sshd_config

CMD ["/usr/sbin/sshd", "-D", "-e", "-f", "/srv/ssh/sshd_config"]
