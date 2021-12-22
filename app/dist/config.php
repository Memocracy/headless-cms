<?php
require __DIR__ . '/vendor/autoload.php';

$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
$dotenv->load();

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         $_ENV["AUTH_KEY"]);
define('SECURE_AUTH_KEY',  $_ENV["SECURE_AUTH_KEY"]);
define('LOGGED_IN_KEY',    $_ENV["LOGGED_IN_KEY"]);
define('NONCE_KEY',        $_ENV["NONCE_KEY"]);
define('AUTH_SALT',        $_ENV["AUTH_SALT"]);
define('SECURE_AUTH_SALT', $_ENV["SECURE_AUTH_SALT"]);
define('LOGGED_IN_SALT',   $_ENV["LOGGED_IN_SALT"]);
define('NONCE_SALT',       $_ENV["NONCE_SALT"]);

/**#@-*/

define('WP_DEBUG',      $_ENV["WP_DEBUG"] === "true" ? true : false);
define('DB_NAME',       $_ENV["DB_NAME"]);
define('DB_USER',       $_ENV["DB_USER"]);
define('DB_PASSWORD',   $_ENV["DB_PASSWORD"]);
define('DB_HOST',       $_ENV["DB_HOST"]);
define('DB_CHARSET',    $_ENV["DB_CHARSET"]);
define('DB_COLLATE',    '');

$domain = "localhost";
$httpHost =  isset($_SERVER['HTTP_HOST']) ? $_SERVER['HTTP_HOST'] : $domain;
define('WP_CONTENT_DIR', __DIR__ . '/wp-content');
define('WP_CONTENT_URL', 'http://' . $httpHost . '/wp-content');

define('WP_SITEURL',    $_ENV["WP_SITE_URL"]);
define('WP_HOME',       $_ENV["WP_HOME"]);
