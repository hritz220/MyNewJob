FROM ubuntu

MAINTAINER Ritik "hritz220@gmail.com"

RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev


WORKDIR /app

RUN pip install Flask==0.10.1

COPY . /app

ENTRYPOINT [ "python3","helloworld.py" ]
