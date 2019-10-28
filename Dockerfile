FROM ubuntu:16.04
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
    xxdiff \
  && apt-get clean


ENV TERM=xterm
