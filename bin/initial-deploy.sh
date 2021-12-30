#!/bin/bash
source "${0%/*}/__init.sh"
source "${0%/*}/__git-submodules.sh"
source "${0%/*}/__composer-install.sh"
source "${0%/*}/__additional-files.sh"

echo -e "${magenta}✔️ Remember to create .env file in the dist directory!${clear}"
