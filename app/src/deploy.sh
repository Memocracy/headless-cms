#!/bin/sh
mydir="${0%/*}"
echo "Running deployment of additional files"
cp "$mydir"/deploy/wp-config.php "$mydir"/wordpress/
rm -r "$mydir"/wordpress/wp-content
