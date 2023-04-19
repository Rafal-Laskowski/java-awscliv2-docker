FROM openjdk:17-jdk-slim

MAINTAINER Rafał Laskowski <rafal.laskowski@outlook.com>

# Install required dependencies and AWS CLI v2
RUN apt-get update \
    && apt-get install -y unzip curl \
    && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install \
    && rm -rf awscliv2.zip aws \
    && apt-get remove -y unzip curl \
    && apt-get autoremove -y \
    && apt-get clean

# Install JQ \
RUN apt-get update \
    && apt-get install -y jq \
    && apt-get clean