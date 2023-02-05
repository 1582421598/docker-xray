FROM ubuntu:22.04 as builder

MAINTAINER 1582421598

RUN ln -sf /usr/share/zoneinfo/Asia/Hong_Kong /etc/localtime && mkdir -p /app/download/xray-core

ENV LANG=en_US.UTF-8

CMD /app/download/xray-core/xray