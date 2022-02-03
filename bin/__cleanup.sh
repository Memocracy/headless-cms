#!/bin/bash
echo -e "${green}🧹 Running cleanup${clear}"

if [ -f "$rootdir"/app/dist/wp-content/plugins/headless-cms-plugin/composer.lock ]; then
  rm "$rootdir"/app/dist/wp-content/plugins/headless-cms-plugin/composer.lock
fi

if [ -f "$rootdir"/app/dist/composer.lock ]; then
  rm "$rootdir"/app/dist/composer.lock
fi
