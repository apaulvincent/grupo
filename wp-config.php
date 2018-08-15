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
define('DB_NAME', 'grp_db');

/** MySQL database username */
define('DB_USER', 'pvuser');

/** MySQL database password */
define('DB_PASSWORD', 'pvpass');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

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
define('AUTH_KEY',         'o8T9^GE-eD_{&)LJoyj;>JDBv5YxYvsyBDq>i|g|.hXoR0I*.t(1@iQT_%j)>j:}');
define('SECURE_AUTH_KEY',  '/I(j+@agVG)+~k%e7$;^0e~Ob|4BP}/p&>$~n`+<w(Drm_XssZm2;f7#R.0Ec1hR');
define('LOGGED_IN_KEY',    'T9xlsaHj*)(|x56y+ _MfPS||&(00m1!;@8A}Clm.+ED2_88B~7:dQf]|uqfsh}c');
define('NONCE_KEY',        '<cf}q%.0WIMm+i) #Ke9(6}PIGARU|0L^M}feSEcU||$FIO*%7u[qM=WWet)|YZj');
define('AUTH_SALT',        '1K[M@KsX1&y]JdTa]&gHj_y+SumV6Q|MN~|*&W&# `Z*ne,OWn;]HN0%hO|G:g7@');
define('SECURE_AUTH_SALT', 'pShAos552}+j$|0sO=FUk}-|jGvN|Qt^K.Ul1j+X19,X:BXV177WuT/mVx&@;KOa');
define('LOGGED_IN_SALT',   'CsHK2ZlSJss-^[$*5()}TCg5RH_<o:.+QPZ*%`OYndas]oQK@puMr3K#V0$ZN%^y');
define('NONCE_SALT',       'CQw?LYA[[Lg40WU952dW@PFHx&X<?yN}F;`L4]Zg-8v,f{H31ac{$,*Z9f@2E*id');

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
