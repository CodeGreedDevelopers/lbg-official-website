<?php
// Getting visitor IP address
    if(isset($_SERVER['HTTP_CLIENT_IP'])) {
        $visitor_ip = $_SERVER['HTTP_CLIENT_IP']; // For shared connections
    } else if(isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        $visitor_ip = $_SERVER['HTTP_X_FORWARDED_FOR']; // For proxy'd connections
    } else {
        $visitor_ip = $_SERVER['REMOTE_ADDR']; // Everyone else
    }
    echo $visitor_ip;
?>