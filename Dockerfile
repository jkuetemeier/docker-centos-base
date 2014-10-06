############################################################
# Dockerfile to build Centos container images with Systemd
# Based on Centos 7
############################################################

FROM centos:centos7

MAINTAINER Jörg Kütemeier <jkuetemeier@kuetemeier.net>

# Update RPM Packages
RUN yum -y update && yum clean all

# Install base tools
RUN yum install -y zsh git vim deltarpm && yum clean all

RUN mkdir -p /opt
RUN cd /opt; git clone https://github.com/jkuetemeier/pub-home.git; /opt/pub-home/bin/install-pub-home

CMD /bin/zsh
