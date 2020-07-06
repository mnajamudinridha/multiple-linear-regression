<?php
use Dotenv\Dotenv;
$dotenv = Dotenv::create(__DIR__."/../");
$dotenv->load();

$boolean = getenv('true_false') === "true";
$server = getenv('db_host');
$username = getenv('db_user');
$password = getenv('db_pass');
$database = getenv('db_db');
$map_api = getenv('map_api');
$con = mysqli_connect($server, $username, $password, $database);
if (mysqli_connect_errno()) {
            echo 'Koneksi Gagal di '.mysqli_connect_error();
}
