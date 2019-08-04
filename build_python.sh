#!/bin/bash

tar zxf /data/Python-3.7.4.tgz -C /data/ && \
cd /data/Python-3.7.4 && \
./configure --prefix=/data/linux_py37 && \
make -j4 && make -j4 install
