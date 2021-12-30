#!/bin/bash
echo -e "${green}🍿 Running git to fetch updates${clear}"
git fetch
git pull
git submodule update --init --remote
