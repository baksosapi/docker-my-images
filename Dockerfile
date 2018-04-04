FROM suse/sles12sp3:latest
MAINTAINER Tux
RUN zypper ref && zypper in -f example-1.0.0-0
COPY application.rpm /tmp/

RUN zypper --non-interactive in /tmp/application.rpm

ENTRYPOINT ["/etc/bin/application"]

CMD ["-i"]
