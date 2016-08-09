FROM ubuntu:15.10
MAINTAINER Yan Li<eyeplum@gmail.com>

RUN apt-get update && \
    apt-get install -y \
        libbsd-dev &&\
    apt-get install -y software-properties-common && \
    apt-add-repository "deb http://apt.llvm.org/wily/ llvm-toolchain-wily-3.8 main" && \
    apt-get update && \
    apt-get install -y --force-yes \
        clang-3.8 \
        lldb-3.8 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

