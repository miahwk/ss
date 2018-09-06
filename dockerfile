FROM ubuntu:16.04

MAINTAINER Mihawk

ENV PORT=1024
ENV PASSWD=""

RUN apt-get update
RUN git clone https://github.com/flyzy2005/ss-fly

WORKDIR /ss-fly

RUN ss-fly.sh -i ${PASSWD} ${PORT} \
&& ss-fly.sh -bbr

EXPOSE 1024
