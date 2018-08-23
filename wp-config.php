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
define('DB_NAME', 'fashion_wp');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

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
define('AUTH_KEY',         '%3|:?]b_gGGVRs1z)F<$0t/O/z}^O/W:xqm~C@z!<t3HNDdA7U~fDzcZj8BSWNw;');
define('SECURE_AUTH_KEY',  '+7+olrT#x9i66PLr F[7T2 =:pD{lz?h+dt^inxF;ChbAj}nSMh+N%y~B39hAd3H');
define('LOGGED_IN_KEY',    '_Fw!8v|Uibra^tRhOL*vVJwwfCc[ywG_2vpDr>cOI&[]L 0]8%wSGO4Q .^YbCdB');
define('NONCE_KEY',        '|9Z|nmr7y~@Z|RfsHCuBWpMA9q0L$d[GbAo<@OfW}J%G7I&&A@z*w%1/omkk>dDG');
define('AUTH_SALT',        'bc0i9%=7e uY<`kEeNm:C(XlNl~ pA%c7$Ti6`%`@e1X&gkIXQAz3Pw+#51Mvk.+');
define('SECURE_AUTH_SALT', '=TNS5:Kys!p!eh&-<2C9D~.j#:@i/X~y;]PROiMVe_=~XX-fo%&(ax)ZaE0v8sy^');
define('LOGGED_IN_SALT',   'Y&K7OmG8sMH`Y:?6IDq>FlaXz@<0R6b.wV!q}C@WT_dvR`98@R<h,b|,1H{7yn6*');
define('NONCE_SALT',       '{{(< nZ)#ExVq*u~LU&3##pfYF9{+&dy~(GDN_<+3~57^0+Ix0i:*YH`W@uzcr2y');

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
