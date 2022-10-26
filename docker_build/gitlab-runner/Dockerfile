FROM alpine as builder
RUN wget -c https://gitlab-docker-machine-downloads.s3.amazonaws.com/v0.16.2-gitlab.15/docker-machine-Linux-x86_64 -O /docker-machine && chmod +x /docker-machine

FROM gitlab/gitlab-runner:v15.5.0
COPY --from=builder /docker-machine /usr/local/bin
