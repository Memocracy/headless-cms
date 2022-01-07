#!/bin/bash
echo -e "${magenta}🔥 Running deployment of additional files${clear}"
cp "$rootdir"/app/deploy/wp-config.php "$rootdir"/app/dist/wordpress/

if [ -d "$rootdir"/app/dist/wordpress/wp-content ]; then
  rm -r "$rootdir"/app/dist/wordpress/wp-content
fi
