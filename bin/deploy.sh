#!/bin/sh
mydir="${0%/*}/../app"
echo "Running composer"
composer update -d "$mydir"/dist

if [ -f "$mydir"/dist/wp-content/plugins/headless-cms-plugin/headless-cms-plugin.php ]; then
  composer update -d "$mydir"/dist/wp-content/plugins/headless-cms-plugin
else
  echo "Error: please clone this repository with submodules!"
fi
