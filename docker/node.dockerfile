FROM ubuntu:20.04

RUN apt-get update && apt-get upgrade -y

ENV TZ=Europe/London
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Package installation
RUN apt-get install -y \
        ca-certificates \
        npm

# Node module installation
RUN npm install npx

# Copy source code
COPY ../web /web
COPY ../assets /assets
