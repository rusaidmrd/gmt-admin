<?php

	//Database Constants
	defined("DB_SERVER") ? null : define("DB_SERVER", "127.0.0.1");
	defined("DB_USER") ? null : define("DB_USER", "root");
	defined("DB_PASS") ? null : define("DB_PASS", "password");
	defined("DB_NAME") ? null: define("DB_NAME", "gm_admin");

	defined('DS') ? null : define('DS', DIRECTORY_SEPARATOR);
	defined('SITE_ROOT') ? null : define('SITE_ROOT', 'C:'.DS.'wamp64'.DS.'www'.DS.'admin');

?>