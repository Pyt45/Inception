<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */
// Redis
define( 'WP_REDIS_HOST', 'redis' );
define( 'WP_REDIS_PORT', 6379 );
// define( 'WP_REDIS_PASSWORD', 'secret' );
define( 'WP_REDIS_TIMEOUT', 1 );
define( 'WP_REDIS_READ_TIMEOUT', 1 );

// change the database for each site to avoid cache collisions
define( 'WP_REDIS_DATABASE', 0 );

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'admin' );

/** MySQL database password */
define( 'DB_PASSWORD', 'admin' );

/** MySQL hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

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
define( 'AUTH_KEY',         'y[Ofry<ZCM~+]5l0y3A3MGbXIxA5kw)XgLraU]Id{<?{HG}F[1i{)X|2B! BWx9.' );
define( 'SECURE_AUTH_KEY',  'Rci1+AkpS ~vKY2^=D-I[= _MjTcq{IZ1xZExQfnz`EB|EI]iT-i<PMnL!GW4Y@B' );
define( 'LOGGED_IN_KEY',    ',FnI9b zEsgSps`;@E~p9!X/w$t3HiKQg4te;LBiAqhy7evUC0|9#&Wr)keqmZ}5' );
define( 'NONCE_KEY',        'B ./_:.p:i8?K2x8IV#F4RcK|K)i^loHA6VTIrXLaY~rBcrc!!.fZLfN}BIy^+z:' );
define( 'AUTH_SALT',        '3s!b#}kV ^l%~)Rv5?eONGzh-fLiR2@~2&HY/DQf}@dEQy1uLOnz[MqJ1{?4!NIH' );
define( 'SECURE_AUTH_SALT', 'VrpwRH0vU/QJqqh|( 17]+!ZyOm2=-qvqCuZdk0lLg)vSIX~m{y/X??kH_pS$Mpt' );
define( 'LOGGED_IN_SALT',   'wX4U=,O!CNO{9B,~u<qhDv_Sl/2;vaIumJ-Xv8wnGJ0FH3Nc.R>y0?.@0CjKEjz`' );
define( 'NONCE_SALT',       ')RhbB^Z;$8,U$Wxu]*{lg`cK|F3AzoR%B4UO[3$d/zD(X2]~@!k|Rd6,qk V>lUO' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
