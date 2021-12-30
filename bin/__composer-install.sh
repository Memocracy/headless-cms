#!/bin/bash
echo -e "${green}😊 Running initial composer for WP${clear}"
$COMPOSER install -d "$rootdir"/app/dist

if [ -f "$rootdir"/app/dist/wp-content/plugins/headless-cms-plugin/headless-cms-plugin.php ]; then
  echo -e "${green}😊 Running initial composer for plugins${clear}"
  $COMPOSER install -d "$rootdir"/app/dist/wp-content/plugins/headless-cms-plugin
else
  echo "${red}🤕 Error: please clone this repository with submodules!${clear}"
fi
