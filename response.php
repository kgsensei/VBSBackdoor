<?php

error_reporting(0);
$url.= $_SERVER['REQUEST_URI'];
$url_components = parse_url($url);
parse_str($url_components['query'], $params); 
$cmd = $params['return'];
file_put_contents("Main.txt", "");
file_put_contents("Main.txt", $cmd, FILE_APPEND);

?>