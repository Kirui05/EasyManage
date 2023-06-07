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
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'easy-manage' );

/** Database username */
define( 'DB_USER', 'admin1' );

/** Database password */
define( 'DB_PASSWORD', 'admin' );

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
define( 'AUTH_KEY',         '_%!4L(.GQ5ap#e31sR^&>BK)f{+Y%T[Gy?lX,vEl8cPjWxBU/f^-#0G*2{XFAICX' );
define( 'SECURE_AUTH_KEY',  'v3j[i_S4brmayy:rr;EF)tj;q{8Js||ar@FXNpp2{-7789`No:L9jBa_72]QnMop' );
define( 'LOGGED_IN_KEY',    '2b2sdgWIgKH#QvwxHgEB2uzAYMJxQORvyM6;0gOG`qYG80lA60 IaW|#H=&8Ma0]' );
define( 'NONCE_KEY',        '(=$pG>8vUn4<-dJ<W)n`6}7l*,(p9K|ul[|#FDQ?u.D]z:$^C?vo#~p[hjJ,hNim' );
define( 'AUTH_SALT',        'G&m<Z753J$+os}I2}:V(xm!6#IunS1{nhY[0-?^kt+g@t5GZ}^e$9wJsIJlXwSZ)' );
define( 'SECURE_AUTH_SALT', 'nWA `>{[N`,qw5OZe_^*n?N66]N`V(95>g sk?JNv<7=*=),k7dMR+%zSU!s7Ome' );
define( 'LOGGED_IN_SALT',   'FHp 6*}U&hLob?U=P6CBB!%TXQ6dHCq|pB3<2.L<PnS4r<WX}zCJC,QOtm-X`Z D' );
define( 'NONCE_SALT',       'GlE4OOf~JIF`<LfZ@h|BgU_J>!#|>wU9cpPK?kL(ggsR4RsG!,IUQ}JoA;s>[#:8' );

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
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
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
