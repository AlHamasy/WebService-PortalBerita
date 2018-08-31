<?php 
include 'koneksi.php';

// cek parameter post ID Buku
if (!isset($_POST['id_berita'])) {
	$status = false;
	$data_berita = null;
	$msg = "ID berita tidak ditemukan";

	//convert ke json
	$response_json = json_encode(['status' => $status, 
				      'data_berita' => $data_berita,
				      'msg' => $msg]);
	//tampilkan
	echo $response_json;

	//stop proses
	return;
}

// id berita
$id_berita = $_POST['id_berita'];

// buat sql
$sql = "SELECT * FROM tb_berita WHERE id_berita = $id_berita";

// buat query
$query = $conn->query($sql);

//fetch data
$data = $query->fetch_assoc();

//cek jumlah baris data
if($query->num_rows > 0 ){
	$status = true;
	$data_berita = $data;
	$msg = "Data berita ditemukan";
}
else {
	$status = false;
	$data_berita = null;
	$msg = "Data berita tidak ditemukan";
}

header ("Content-Type: application/json");

//convert ke json
$response_json = json_encode(['status' => $status, 'data_berita' => $data_berita]);

//tampilkan
echo $response_json;

?>