#!/bin/sh
mydir="${0%/*}"
echo "Running composer"
composer install -d "$mydir"/dist

echo "Running deployment of additional files"
cp "$mydir"/deploy/wp-config.php "$mydir"/dist/wordpress/
rm -r "$mydir"/dist/wordpress/wp-content

echo "Copying default Docker env"
cp "$mydir"/deploy/.env.docker "$mydir"/dist/.env
