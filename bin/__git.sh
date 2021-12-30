#!/bin/bash
echo -e "${green}🍿 Running git to fetch updates${clear}"
git -C "$rootdir" fetch
git -C "$rootdir" pull
git -C "$rootdir" submodule update --init --remote
