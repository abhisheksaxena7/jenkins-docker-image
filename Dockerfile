FROM jenkins/jenkins:latest

ARG HOST_UID=1000
ARG HOST_GID=999

USER root
RUN apt-get -qq update \
  && apt-get install -y sudo \
  && apt-get -qq -y install \
  curl

RUN curl -sSL https://get.docker.com/ | sh

RUN echo "jenkins:jenkins" | chpasswd && adduser jenkins sudo

RUN usermod -u $HOST_UID jenkins
RUN groupmod -g $HOST_GID docker
RUN usermod -a -G staff jenkins
RUN usermod -a -G docker jenkins

USER jenkins
