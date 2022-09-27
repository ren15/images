FROM ubuntu:20.04

ENV llvm_version="14.0.6"
ENV download_link=https://github.com/llvm/llvm-project/archive/refs/tags/llvmorg-${llvm_version}.zip
ENV DEBIAN_FRONTEND=noninteractive

RUN \
    apt-get update \
    && apt-get install -y \
        apt-transport-https \
        build-essential \
        ca-certificates \
        cmake \
        curl \
        git \
        ninja-build \
        vim \
        unzip \
        python3 \
        zlib1g-dev \
        wget \
    && apt-get clean


RUN \
    mkdir -p /opt/llvm \
    && cd /opt/llvm \
    && wget -q --tries=10 ${download_link} \
    && unzip -q llvmorg-${llvm_version}.zip 

RUN \
    cd /opt/llvm/llvm-project-llvmorg-${llvm_version} \
    && mkdir build \
    && cd build \
    && cmake ../llvm -G Ninja \
      -DLLVM_ENABLE_PROJECTS='clang;lld' \
      -DLLVM_PARALLEL_LINK_JOBS=1 \
      -DLLVM_TARGETS_TO_BUILD=X86 \
      -DCMAKE_BUILD_TYPE=Release \
      -DLLVM_ENABLE_ZLIB=ON \
      -DLLVM_ENABLE_ASSERTIONS=ON \
    && ninja



