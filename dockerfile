FROM Ubuntu:16.04

MAINTAINER Mihawk

ENV PORT=1024
ENV PASSWD=""

COPY ./ss-fly /

WORKDIR /ss-fly

RUN apt-get update
RUN ss-fly.sh -i ${PASSWD} ${PORT} 
&& ss-fly.sh -bbr

EXPOSE 1024
