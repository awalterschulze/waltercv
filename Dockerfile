FROM ubuntu:xenial

RUN apt-get update
RUN apt-get install -y \
    make \
    gnuplot \
    wget \
    python-pygments
RUN apt-get install -y \
    texlive-full \
    biber \
    latexmk

WORKDIR /data
VOLUME ["/data"]
