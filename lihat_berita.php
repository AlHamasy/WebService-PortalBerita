<?php 
// panggil kelas koneksi.php
include 'koneksi.php';

// SQL untuk menampilkan data
$sql = "SELECT * FROM tb_berita";

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
	$data_berita = $result;
}
else{
	$status = false;
	$data_berita = null;
}


//convert array ke json (wajib)
$response_json = json_encode(['status' => $status, 
							  'data_berita' => $data_berita]);
echo $response_json;

?>