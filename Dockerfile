FROM centos:centos7

MAINTAINER jkuetemeier@kuetemeier.net

RUN yum -y upgrade
RUN yum install -y zsh git

RUN mkdir -p /opt
RUN cd /opt; git clone https://github.com/jkuetemeier/pub-home.git; /opt/pub-home/bin/install-pub-home
