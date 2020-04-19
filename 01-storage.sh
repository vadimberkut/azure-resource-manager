#!/bin/bash

alias az='az.cmd'

resource_group='arm-introduction'

function utc_date() {
    date --utc +%Y%m%d%H%M%S
}

az group create \
  --name $resource_group \
  --location "WestEurope"

az deployment group create --name "$(utc_date)_new-storage" --resource-group $resource_group --template-file "01-storage.json"
