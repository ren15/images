FROM centos:7


RUN \
    yum install -y curl gcc make git openssh openssl-devel &&\
    yum clean all && rm -rf /var/cache/yum
RUN \
    # export http_proxy=http://192.168.122.1:1088;export https_proxy=http://192.168.122.1:1088; \
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y &&\
    source $HOME/.cargo/env &&\
    rustc --version &&\
    rustup target add x86_64-unknown-linux-musl

