#!/bin/bash
echo -e "${green}😊 Running composer for WP${clear}"
$COMPOSER update -d "$rootdir"/app/dist

if [ -f "$rootdir"/app/dist/wp-content/plugins/headless-cms-plugin/headless-cms-plugin.php ]; then
  echo -e "${green}😊 Running composer for plugins${clear}"
  $COMPOSER update -d "$rootdir"/app/dist/wp-content/plugins/headless-cms-plugin
else
  echo -e "${red}🤕 Error: please clone this repository with submodules!${clear}"
fi
