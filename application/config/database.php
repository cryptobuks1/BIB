<?php

defined('BASEPATH') OR exit('No direct script access allowed');



$active_group = 'default';

$query_builder = TRUE;

// $hostname ='localhost';

// $username ='u886168621_bib';

// $password ='Reset123!';

// $database ='u886168621_bib';	
$hostname ='us-cdbr-iron-east-05.cleardb.net';

$username ='b19c9562f71218';

$password ='3e4bd718';

$database ='heroku_9780d637cc01dce';	
// $hostname ='166.62.28.109';

// $username ='i3175962_ally';

// $password =')Ee#L9p8zaI-';

// $database ='logixbui_golimo';	



$db['default'] = array(

	'dsn'	=> '',

	'hostname' => $hostname,

	'username' => $username,

	'password' => $password,

	'database' => $database,

	'dbdriver' => 'mysqli',

	'dbprefix' => '',

	'pconnect' => FALSE,

	'db_debug' => (ENVIRONMENT !== 'production'),

	'cache_on' => FALSE,

	'cachedir' => '',

	'char_set' => 'utf8',

	'dbcollat' => 'utf8_general_ci',

	'swap_pre' => '',

	'encrypt' => FALSE,

	'compress' => FALSE,

	'stricton' => FALSE,

	'failover' => array(),

	'save_queries' => TRUE

);

