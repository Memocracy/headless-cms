#!/bin/bash
if [ ! -f "$rootdir"/.gitmodules ]; then
  echo -e "${green}🍿 Creating config for submodules${clear}"
  cp "${rootdir}"/.gitmodules."${BRANCH}" "${rootdir}"/.gitmodules
  git submodule update --init --remote
fi
