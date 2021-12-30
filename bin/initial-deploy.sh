#!/bin/sh
mydir="${0%/*}/../app"
echo "Running composer"
composer install -d "$mydir"/dist

if [ -f "$mydir"/dist/wp-content/plugins/headless-cms-plugin/headless-cms-plugin.php ]; then
  composer install -d "$mydir"/dist/wp-content/plugins/headless-cms-plugin
else
  echo "Error: please clone this repository with submodules!"
fi

echo "Running deployment of additional files"
cp "$mydir"/deploy/wp-config.php "$mydir"/dist/wordpress/
rm -r "$mydir"/dist/wordpress/wp-content

echo "Remember to create .env file in the dist directory!"
