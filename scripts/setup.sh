#!/bin/bash

echo "Login into azure az login ..."
az login --service-principal -u $ARM_CLIENT_ID -p $ARM_CLIENT_SECRET --tenant $ARM_TENANT_ID

echo "Cloing latest sourcecode from github into docker volume ..."
if [ -d "src/terraform-provider-azurerm" ]; then
    echo "terraform already cloned"
else
    cd src && git clone https://github.com/hashicorp/terraform-provider-azurerm.git
fi