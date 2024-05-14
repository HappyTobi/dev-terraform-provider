GO ?= go
SHELL:=/bin/bash

.PHONY: all

all: binary

binary:
	echo "build terraform provider"
	GOCACHE=off \
	cd /workspaces/dev-terraform-provider/src/terraform-provider-azurerm; \
	rm -rf /workspaces/dev-terraform-provider/build; \
	$(GO) build -gcflags=all="-N -l" -o /workspaces/dev-terraform-provider/build/terraform/terraform-azurerm/terraform-provider-azurerm
