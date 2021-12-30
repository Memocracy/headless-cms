#!/bin/bash
# Color variables
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
cyan='\033[0;36m'
# Clear the color after that
clear='\033[0m'

rootdir="${0%/*}/.."

if [ -f "$rootdir"/.env ]; then
  echo -e "${magenta}🔥 Using local .env file${clear}"
  export $(echo $(cat .env | sed 's/#.*//g'| xargs) | envsubst)

  if [ $LOCAL_COMPOSER = "true" ]; then
    echo -e "${magenta}✨ Using local composer${clear}"
    COMPOSER="${PHP_PATH} ${0%/*}/composer.phar"
  else
    COMPOSER="composer"
  fi
fi
