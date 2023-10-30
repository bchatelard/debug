FROM ubuntu:20.04
MAINTAINER Bastien Chatelard <chatel.bast@gmail.com>

RUN apt-get update
RUN apt-get install -y \
    bind9utils \
    build-essential \
    bzip2 \
    coreutils \
    cpustat \
    curl \
    diffutils \
    dnsutils \
    ethtool \
    findutils \
    gcc \
    git \
    gzip \
    htop \
    ifstat \
    iftop \
    iperf \
    iproute2 \
    iptables \
    iptstate \
    iputils-ping \
    iputils-tracepath \
    jq \
    libbind-dev \
    libcap-dev \
    libgeoip-dev \
    libkrb5-dev \
    libnghttp2-dev \
    libssl-dev \
    libxml2-dev \
    lsb-release \
    lsof \
    lynx \
    make \
    net-tools \
    netcat-openbsd \
    netperf \
    nghttp2 \
    openssh-client \
    openssh-server \
    openssl \
    postgresql-client \
    procps \
    socat \
    strace \
    sysstat \
    tcpdump \
    tree \
    unzip \
    vim \
    wget \
    ntpdate \
    wait-for-it \
  && apt-get clean

RUN mkdir /var/run/sshd
RUN mkdir /root/.ssh
RUN chmod 0700 /root/.ssh
RUN echo 'root:root' | chpasswd
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 22

ENV TERM=xterm

CMD ["sleep", "infinity"]
