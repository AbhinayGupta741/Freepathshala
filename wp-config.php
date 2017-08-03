<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('WP_CACHE', true); //Added by WP-Cache Manager
define( 'WPCACHEHOME', '/srv/disk3/2336022/www/t12pathshala.co.nf/wp-content/plugins/wp-super-cache/' ); //Added by WP-Cache Manager
define('DB_NAME', '2336022_wpress84fba1d7');

/** MySQL database username */
define('DB_USER', '2336022_wpress84fba1d7');

/** MySQL database password */
define('DB_PASSWORD', 'wdYfUISKJgmpmzGSuWoWwfvFPRw8TyaI');

/** MySQL hostname */
define('DB_HOST', 'fdb17.runhosting.com');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'RYH.P_WRY`l,HtMY>KNyg5;`*^9wPLQB;}[STZuW?~ng&WWE[0Bns}zd]Vxaq v{');
define('SECURE_AUTH_KEY',  'chsjHM[;2|TsmO]Kwp^fXro`JZWYU1tZC&RM{}cXx8-)rV~Md J4qhJ[qo@])Iq8');
define('LOGGED_IN_KEY',    ')(`9qOlJ;A)(,X(:[<mWov(Md>G:Rklg/,[!f.kjgFu@gMb(rHw3?ERh/`#AsoVC');
define('NONCE_KEY',        'L9~Cyi=q+1GiIe&CC+&mXQM#CDTEUGI*PV+[]0M9tTZ{MUF/^;,*Ra:5U(r6_>K=');
define('AUTH_SALT',        '%g1AP1~mDVz^@i%?s1QpNqj&tOwfS}BJo}Fc^mI(;.9e:m9qb|}oiL!RKK%n#wpk');
define('SECURE_AUTH_SALT', '{]jEqcbY@X^+0nixz?(91o5/my_!sN{;a)Ec75+?_F]1uw2D)w;GYWI@m{C.tdmN');
define('LOGGED_IN_SALT',   'OZT8<6WA`2Gc^X6+Jw,8tJ, 5{j<uD)h%mR|rlT0#PY^&]6&Apnhg9P@4}KQD?#U');
define('NONCE_SALT',       'EXR* }N!q;aJlRP-zNNGCPsV7:gw/Tn}MA~o0CL>&Z%l9L?qiTS`hV6(]M2^>=5/');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
