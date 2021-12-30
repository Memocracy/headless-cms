#!/bin/bash
source "${0%/*}/__init.sh"
source "${0%/*}/__git-submodules.sh"
source "${0%/*}/__composer-install.sh"
source "${0%/*}/__additional-files.sh"

echo -e "${magenta}✔️ Copying default docker .env config!${clear}"
cp "$rootdir"/app/deploy/.env.docker "$rootdir"/app/dist/.env
