<?php 

// panggil kelas koneksi.php
include 'koneksi.php';

// SQL untuk mengambil data
$sql = "SELECT * FROM tb_artikel";

// masukkan ke method query
$query = $conn->query($sql);

//siapkan variable penampung array
$result = array();

// fetch hasil eksekusi ke array menggunakan fetch_array / fetch_assoc (recomended fetch_assoc)
while ($data = $query->fetch_assoc()) {
	//tampilkan
	//print_r($data);
	$result[] = $data;

}
// hitung banyak baris array
if (count($result) > 0){
	$status = true;
	$message = "Data artikel ditemukan";
	$data_artikel = $result;
}
else{
	$status = false;
	$message = "Data artikel tidak ada";
	$data_artikel = null;
}

//convert array ke json (wajib)
$response_json = json_encode(['status' => $status,
							   'message' => $message,	
							   'data_artikel' => $data_artikel]);

echo $response_json;

?>