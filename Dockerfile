FROM centos:centos6

MAINTAINER Chris Luo <chris.luo@derivco.se>

RUN yum update -y && \
      yum install -y wget && \
      wget https://storage.googleapis.com/golang/go1.7.linux-amd64.tar.gz && \
      tar -xvf go1.7.linux-amd64.tar.gz && \
      mv go /goroot


ENV GOROOT=/goroot \
      GOPATH=/gopath \
      GOBIN=/gopath/bin \
      PATH=${PATH}:/goroot/bin:/gopath/bin


RUN yum install git -y && \
      go get github.com/constabulary/gb/...
