FROM ubuntu:15.10
MAINTAINER Yan Li<eyeplum@gmail.com>

RUN apt-get update && \
        apt-get install -y \
        cmake \
        git \
        icu-devtools \
        libblocksruntime-dev && \
        libbsd-dev \
        libedit-dev \
        libicu-dev \
        libpython-dev \
        libncurses5-dev \
        libsqlite3-dev \
        libxml2-dev \
        ninja-build \
        pkg-config \
        python \
        software-properties-common \
        swig \
        uuid-dev

RUN apt-add-repository "deb http://apt.llvm.org/wily/ llvm-toolchain-wily-3.8 main" && \
        apt-get update && \
        apt-get install -y --force-yes \
        clang-3.8 \
        lldb-3.8

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

