ROM ubuntu:latest

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get -y install autossh \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

RUN mkdir -vp /etc/autossh.conf.d/
#ADD autossh.conf.d/* /etc/autossh.conf.d/

RUN mkdir -vp /root/.ssh/
RUN chmod go-rwx /root/.ssh/

#ADD autossh-run /root/

WORKDIR /root


