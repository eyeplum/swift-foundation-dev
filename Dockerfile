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

RUN apt-add-repository "deb http://apt.llvm.org/wily/ llvm-toolchain-wily-3.9 main" && \
    apt-get update && \
    apt-get install -y --force-yes \
        clang-3.9 \
        lldb-3.9 && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    update-alternatives --install /usr/bin/clang clang /usr/bin/clang-3.9 100 && \
    update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.9 100 && \
    update-alternatives --install /usr/bin/lldb lldb /usr/bin/lldb-3.9 100 && \
    update-alternatives --install /usr/bin/lldb-server lldb-server /usr/bin/lldb-server-3.9 100 && \
    update-alternatives --install /usr/bin/lldb-mi lldb-mi /usr/bin/lldb-mi-3.9 100
