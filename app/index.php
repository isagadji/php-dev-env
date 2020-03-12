<?php
# php config
phpinfo();

# test mongo
//$manager = new MongoDB\Driver\Manager("mongodb://mongo:27017");
//var_dump($manager);


# test redis php-session
//session_start();
//$count = isset($_SESSION['count']) ? $_SESSION['count'] : 1;
//echo $count;
//$_SESSION['count'] = ++$count;

# test redis
//$redis = new Redis();
//$redis->connect('dev-redis', 6379);
//var_dump($redis->config('GET', '*'));
