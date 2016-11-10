FROM ubuntu:16.04
MAINTAINER Yan Li<eyeplum@gmail.com>

RUN apt-get update \
    && apt-get install -y \
      git \
      cmake \
      ninja-build \
      clang \
      lldb \
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
      libcurl4-openssl-dev

