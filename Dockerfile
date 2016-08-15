FROM ubuntu:15.10
MAINTAINER Yan Li<eyeplum@gmail.com>

RUN apt-get update && \
        apt-get install -y \
        git \
        cmake \
        ninja-build \
        clang \
        lldb \
        lldb-dev \
        liblldb-dbg \
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
        libblocksruntime-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

