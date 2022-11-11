#!/bin/bash

TERRAFORM_VERSION="${1:-"1.3.4"}"

architecture="$(uname -m)"
case ${architecture} in
  x86_64) architecture="amd64";;
  aarch64 | armv8*) architecture="arm64";;
  aarch32 | armv7* | armvhf*) architecture="arm";;
  i?86) architecture="386";;
  *) echo "(!) Architecture ${architecture} unsupported"; exit 1 ;;
esac

echo "Downloading terraform..."

curl -sSL -o "/tmp/terraform.zip" "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_${architecture}.zip"
unzip -o "/tmp/terraform.zip"
mv -f "terraform" "/usr/bin/"

echo "Done..."