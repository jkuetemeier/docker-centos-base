############################################################
# Dockerfile to build Centos container base image
# Based on Centos 7
############################################################

FROM centos:latest

MAINTAINER Jörg Kütemeier <jkuetemeier@kuetemeier.net>

# BUG? Broken sym-link (/var/lock) workaround
RUN mkdir -p /run/lock

# Update RPM Packages
RUN yum -y install deltarpm && yum -y update && yum clean all

# Install base tools
RUN yum install -y zsh git vim && yum clean all

RUN mkdir -p /opt
RUN cd /opt; git clone https://github.com/jkuetemeier/pub-home.git; /opt/pub-home/bin/install-pub-home

CMD /bin/zsh
