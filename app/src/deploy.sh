#!/bin/sh
mydir="${0%/*}"
echo "Running composer"
composer install -d "$mydir"

echo "Running deployment of additional files"
cp "$mydir"/deploy/wp-config.php "$mydir"/wordpress/
rm -r "$mydir"/wordpress/wp-content
