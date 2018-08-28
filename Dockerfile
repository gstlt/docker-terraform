# vim: set ts=4 sw=4 tw=0 et

FROM alpine:3.8
MAINTAINER Grzegorz Adamowicz

ARG VERSION=v0.11.8
ENV TERRAFORM_VERSION $VERSION

LABEL Description="Terraform"

COPY Makefile-terraform /root/Makefile
RUN apk add --no-cache make && cd /root && make terraform && mv /root/terraform /usr/local/bin/

CMD /bin/bash


