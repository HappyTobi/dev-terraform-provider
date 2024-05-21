#!/bin/bash

echo "Login into azure az login ..."
az login --service-principal -u "${ARM_CLIENT_ID}" -p "${ARM_CLIENT_SECRET}" --tenant "${ARM_TENANT_ID}"

if ! command -v gofmt &> /dev/null; then
    echo "installing go packages"
    go install -v  golang.org/x/tools/gopls@latest
    go install -v  github.com/cweill/gotests/gotests@latest
    go install -v  github.com/fatih/gomodifytags@latest
    go install -v  github.com/josharian/impl@latest
    go install -v  github.com/haya14busa/goplay/cmd/goplay@latest
    go install -v  github.com/go-delve/delve/cmd/dlv
    go install -v  honnef.co/go/tools/cmd/staticcheck
fi

echo "Clone latest terraform provider azurerm from github into docker volume ..."
if [ -d "/workspaces/dev-terraform-provider/src/terraform-provider-azurerm" ]; then
    echo "terraform already cloned"
else
    pushd "/workspaces/dev-terraform-provider/src" || exit
        git clone https://github.com/hashicorp/terraform-provider-azurerm.git
    popd || exit

fi

echo "Clone latest terraform provider azuread from github into docker volume ..."
if [ -d "/workspaces/dev-terraform-provider/src/terraform-provider-azuread" ]; then
    echo "terraform already cloned"
else
    pushd "/workspaces/dev-terraform-provider/src" || exit
        git clone https://github.com/hashicorp/terraform-provider-azuread.git
    popd || exit
fi
