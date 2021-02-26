#!/bin/bash

tar zxf /data/Python-3.9.2.tgz -C / && \
cd /Python-3.9.2 && \
./configure --prefix=/data/linux_build_3.9.2 && \
make -j4 && make -j4 install
