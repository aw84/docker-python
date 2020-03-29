#!/bin/bash

tar zxf /Python-3.7.4.tgz -C / && \
cd /Python-3.7.4 && \
./configure --prefix=/data/linux_build_3.7.4 && \
make -j4 && make -j4 install
