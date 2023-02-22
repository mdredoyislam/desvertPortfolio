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
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'desvert' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

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
define( 'AUTH_KEY',         '-C;]JRF=ts!y{^s|,+;N)qr=2~k|wR3@Cxf5,yXRM14>7cVk4}3k6mdbuAfl7/Kx' );
define( 'SECURE_AUTH_KEY',  '`uM)i#+sfa)XNEeejHh<3ZZ,0Y#{b6&uz|ks3?UaOv?8`j0r8qm=5>iXJWM<j;}A' );
define( 'LOGGED_IN_KEY',    's$Q`#+ti<Gy?LwzfCL4ughK$}93upIXOB]D!A=-&2}?DZXlm?-QH.{gd9&GYM{-{' );
define( 'NONCE_KEY',        'n,cZ9%{qXtY<gV<uRx3}gH6/Zj?WEPkzA/ (D^w$pWn^7(2S+TWaCI6rgG3y5:Q}' );
define( 'AUTH_SALT',        '}NuOEQ?nSViYCB38.JW(b[|^f[j:,.NkcPC>&;qhx3:]#1XisvvS%}r#CU?>d/$Y' );
define( 'SECURE_AUTH_SALT', 't=rDw`Vi6~MvRKAfM jM0 ;7b[BoO.*=BZ..nzz]<P}^2``/,?CMe?~qLZ8.i=!*' );
define( 'LOGGED_IN_SALT',   ' l02ajEd1jS81$inA_8:D8%b-8R-ugzocn@D0`mlB(g:&cOWdt?Rtretfbq%|e*w' );
define( 'NONCE_SALT',       '9F/v,0E,#%sr8t^:yC@U`5JVxm3BdMQxG;VW!~3CyUW;R1L7dO3uAg87gOMc[`/i' );

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
