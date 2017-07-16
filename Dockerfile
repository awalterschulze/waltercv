FROM debian:jessie

RUN apt-get update \
	&& apt-get install -y \
    texlive-full \
    biber \
    latexmk \
    make \
    gnuplot \
    wget \
    python-pygments

ADD ./HelveticaNeue.dfont /usr/local/share/fonts/HelveticaNeue.dfont
RUN fc-cache -f -v

WORKDIR /data
VOLUME ["/data"]
