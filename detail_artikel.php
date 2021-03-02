<?php
include 'koneksi.php';

// cek parameter post ID Berita
if (!isset($_POST['id'])) {

	$status = false;
	$data_artikel = null;
	$msg = "ID artikel tidak ditemukan";

	//convert ke json
	$response_json = json_encode(['status' => $status,
							      'data_artikel' => $data_artikel,
							      'msg' => $msg]);
	//tampilkan
	echo $response_json;

	//stop proses
	return;
}

// id berita
$id = $_POST['id'];

// buat sql
$sql = "SELECT * FROM tb_artikel WHERE id = $id";

// buat query
$query = $conn->query($sql);

//fetch data
$data = $query->fetch_assoc();

//cek jumlah baris data
if($query->num_rows > 0 ){
	$status = true;
	$data_artikel = $data;
	$msg = "Data artikel ditemukan";
}
else {
	$status = false;
	$data_artikel = null;
	$msg = "Data artikel tidak ditemukan";
}

header("Content-Type: application/json");

//convert ke json
$response_json = json_encode(['status' => $status, 'data_berita' => $data_artikel]);

//tampilkan
echo $response_json;

?>
