FROM ubuntu:18.04

RUN apt-get -qq update && \
    apt-get -qq install -y python3 python3-pip p7zip-full p7zip-rar aria2 curl pv jq ffmpeg gcc git locales python3-lxml 

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
