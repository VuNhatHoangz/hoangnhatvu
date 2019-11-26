<?php 
    $mysql_hostname = "localhost"; 
    $mysql_username = "root"; $mysql_password =""; 
    $mysql_database = "qlhs_thpt"; 
    $db = mysqli_connect($mysql_hostname , $mysql_username, $mysql_password, $mysql_database) 
    or die("Connection problem With SQL. Hostname , Username Or Password are wrong!"); 
?>