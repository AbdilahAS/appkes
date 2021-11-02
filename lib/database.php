
<?php
/**
 * Namafile : database.php 
 * ----------------------------*/
$db_host = 'localhost'; 
$db_user = 'root';     // ini berlaku di xampp
$db_pass = '';         // ini berlaku di xampp
$db_name = 'penyakit';
// melakukan koneksi ke database
$connect = new mysqli($db_host,$db_user,$db_pass,$db_name);
// cek koneksi yang kita lakukan berhasil atau tidak
if ($connect->connect_error) {
   // jika terjadi error, matikan proses dengan die() atau exit();
   die('Maaf koneksi gagal: '. $connect->connect_error);
}