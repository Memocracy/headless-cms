#!/bin/bash
echo -e "${green}🍿 Running git to fetch updates${clear}"
git -c "$rootdir" fetch
git -c "$rootdir" pull
git -c "$rootdir" submodule update --init --remote
