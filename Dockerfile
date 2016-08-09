FROM ubuntu:15.10
MAINTAINER Yan Li<eyeplum@gmail.com>

RUN apt-add-repository "deb http://apt.llvm.org/wily/ llvm-toolchain-wily-3.8 main" && \
        apt-get update && \
        apt-get install -y \
        clang-3.8 \
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
        lldb-3.8 \
        ninja-build \
        pkg-config \
        python \
        swig \
        uuid-dev \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

