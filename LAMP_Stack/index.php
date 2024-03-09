<?php
$dbname = 'dbname';
$dbuser = 'dbuser';
$dbpass = 'dbpass';
$dbhost = 'dbhost';

$connect = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

if (!$connect) {
  die("Unable to connect to '$dbhost'. Error: " . mysqli_connect_error());
}

$test_query = "SHOW TABLES FROM $dbname";
$result = mysqli_query($connect, $test_query);

if (!$result) {
  die("Error in query: " . mysqli_error($connect));
}

echo "Connected successfully";

mysqli_close($connect);
