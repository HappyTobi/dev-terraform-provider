FROM golang:1.19-bullseye

ARG TERRAFORM_VERSION="1.1.7"

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN apt-get update && apt-get install -y \
  git \
  python3 \
  python3-pip \
  make \
  unzip

RUN pip install azure-cli

COPY ./scripts/terraform.sh /tmp/scripts/terraform.sh
RUN chmod +x /tmp/scripts/terraform.sh && /tmp/scripts/terraform.sh "${TERRAFORM_VERSION}"

CMD bash