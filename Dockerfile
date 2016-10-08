FROM ubuntu:15.10
MAINTAINER Yan Li<eyeplum@gmail.com>

RUN apt-get update \
    && apt-get install -y \
        wget \
        git \
        clang \
        lldb \
        ninja-build \
        python \
        uuid-dev \
        libicu-dev \
        icu-devtools \
        libbsd-dev \
        libedit-dev \
        libxml2-dev \
        libsqlite3-dev \
        swig \
        libpython-dev \
        libncurses5-dev \
        pkg-config \
        libblocksruntime-dev \
        dh-autoreconf \
        software-properties-common

RUN cd /tmp \
    && wget https://cmake.org/files/v3.6/cmake-3.6.2.tar.gz \
    && tar xvf cmake-3.6.2.tar.gz \
    && cd cmake-3.6.2 \
    && ./bootstrap \
    && make \
    && make install \
    && cd .. \
    && rm -rf cmake* \
    && update-alternatives --install /usr/bin/cmake cmake /usr/local/bin/cmake 100
