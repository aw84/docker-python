FROM debian:buster-slim

ENV DEBIAN_FRONTEND noninteractive

RUN echo "deb http://deb.debian.org/debian buster main\ndeb-src http://deb.debian.org/debian buster main\ndeb http://security.debian.org/debian-security buster/updates main\ndeb-src http://security.debian.org/debian-security buster/updates main\ndeb http://deb.debian.org/debian buster-updates main\ndeb-src http://deb.debian.org/debian buster-updates main" > /etc/apt/sources.list \
&& apt-get update \
&& apt-get dist-upgrade --yes \
&& apt-get install -y build-essential \
&& apt-get build-dep -y python3-{openssl} \
git \
libexpat1-dev \
libssl-dev \
zlib1g-dev \
libncurses5-dev \
libbz2-dev \
liblzma-dev \
libsqlite3-dev \
libffi-dev \
tcl-dev \
linux-headers-amd64 \
libgdbm-dev \
libreadline-dev \
tk \
tk-dev \
libexpat1 \
libssl1.1 \
zlib1g \
libncurses5 \
bzip2 \
liblzma5 \
sqlite3 \
libsqlite3-dev \
tcl \
libreadline7 \
tk 

ADD Python-src /tmp/python-src

RUN cd /tmp/python-src \
&& ./configure \
--enable-optimizations \
--with-ensurepip=install \
&& make -j4 \
&& make -j4 install \
&& cd / \
&& rm -rf /tmp/python-src \
&& apt-get clean \
&& apt-get autoclean \
&& update-alternatives --install /usr/bin/python python /usr/local/bin/python3.9 2
