FROM golang:1.22-bullseye

ARG TERRAFORM_VERSION="1.4.6"

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN apt-get update && apt-get install -y \
  git \
  python3 \
  python3-pip \
  make \
  unzip \
  tmux

RUN pip install azure-cli

COPY ./scripts/terraform.sh /tmp/scripts/terraform.sh
RUN chmod +x /tmp/scripts/terraform.sh && /tmp/scripts/terraform.sh "${TERRAFORM_VERSION}"

CMD bash