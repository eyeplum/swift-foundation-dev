FROM ubuntu:15.10
MAINTAINER Yan Li<eyeplum@gmail.com>

RUN apt-get update && \
        apt-get install -y \
        git \
        cmake \
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
        software-properties-common

RUN apt-add-repository "deb http://apt.llvm.org/wily/ llvm-toolchain-wily-3.8 main" && \
    apt-get update && \
    apt-get install -y --force-yes \
        clang-3.8 \
        lldb-3.8 && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

    ln -s /usr/bin/clang-3.8 /usr/bin/clang
    ln -s /usr/bin/clang++-3.8 /usr/bin/clang++
    ln -s /usr/bin/lldb-3.8 /usr/bin/lldb

