# CentOS 6.4 + java 7u71
#
# VERSION 0.0.1
#

FROM centos:centos6

MAINTAINER Samuel Nasello <samuel.nasello@elosi.com>

# install sys tools
RUN yum install -y wget unzip 

# install java
RUN wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/7u71-b14/jdk-7u71-linux-x64.rpm" -O /opt/jdk-7u71-linux-x64.rpm
RUN rpm -Uvh /opt/jdk-7u71-linux-x64.rpm
RUN rm -f /opt/jdk-7u71-linux-x64.rpm
