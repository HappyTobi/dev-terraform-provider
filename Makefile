GO ?= go
SHELL:=/bin/bash

.PHONY: all

all: binary

binary:
	echo "build terraform provider"
	cd /workspaces/dev-terraform-provider/src/terraform-provider-azurerm; \
	$(GO) build -gcflags=all="-N -l" -o /workspaces/dev-terraform-provider/build/terraform
