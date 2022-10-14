FROM centos:7

RUN \
    yum install -y \
        curl \
        gcc \
        git \
        make \
        openssh \
        openssl-devel \
    && yum clean all && rm -rf /var/cache/yum

ENV PATH=/opt/rust/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV RUSTUP_HOME=/opt/rust CARGO_HOME=/opt/rust 
RUN \
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain 1.64.0 -y  \
    && rustc --version

COPY Dockerfile /Dockerfile
