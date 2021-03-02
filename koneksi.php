<?php  

//informasi database
$server = "localhost";
$user_db = "root";
$pass_db = "root";
$nama_db = "db_blog_idn";

//koneksikan ke database
$conn = new Mysqli($server, $user_db, $pass_db, $nama_db) or die("koneksi gagal");

?>