<?php
include('includes/config.php');
error_reporting(E_ALL); // Enable error reporting for debugging

$nama_produk = $_POST['nama_produk'];
$id_barang = $_POST['id_barang'];
$no = $_POST['no'];
$deskripsi = $_POST['deskripsi'];
$harga = $_POST['harga'];
$tb = $_POST['tb'];
$tahun = $_POST['tahun'];
$kapasitas = $_POST['kapasitas'];
$PeralatanMasak = isset($_POST['PeralatanMasak']) ? $_POST['PeralatanMasak'] : '';
$Senter = isset($_POST['Senter']) ? $_POST['Senter'] : '';
$Bantal = isset($_POST['Bantal']) ? $_POST['Bantal'] : '';
$PisauLipat = isset($_POST['PisauLipat']) ? $_POST['PisauLipat'] : '';
$EmergencyLamp = isset($_POST['EmergencyLamp']) ? $_POST['EmergencyLamp'] : '';
$MejaLipat = isset($_POST['MejaLipat']) ? $_POST['MejaLipat'] : '';
$KursiLipat = isset($_POST['KursiLipat']) ? $_POST['KursiLipat'] : '';
$Matras = isset($_POST['Matras']) ? $_POST['Matras'] : '';
$Ponco = isset($_POST['Ponco']) ? $_POST['Ponco'] : '';
$Pluit = isset($_POST['Pluit']) ? $_POST['Pluit'] : '';
$PeralatanSanitasi = isset($_POST['PeralatanSanitasi']) ? $_POST['PeralatanSanitasi'] : '';
$Binocular = isset($_POST['Binocular']) ? $_POST['Binocular'] : '';
$vimage1 = $_FILES["img1"]["name"];
$vimage2 = $_FILES["img2"]["name"];
$vimage3 = $_FILES["img3"]["name"];
$vimage4 = $_FILES["img4"]["name"];
$vimage5 = $_FILES["img5"]["name"];
$uploadPath = "img/productimages/"; // Specify the upload path

// Move uploaded files to the desired location
move_uploaded_file($_FILES["img1"]["tmp_name"], $uploadPath . $_FILES["img1"]["name"]);
move_uploaded_file($_FILES["img2"]["tmp_name"], $uploadPath . $_FILES["img2"]["name"]);
move_uploaded_file($_FILES["img3"]["tmp_name"], $uploadPath . $_FILES["img3"]["name"]);
move_uploaded_file($_FILES["img4"]["tmp_name"], $uploadPath . $_FILES["img4"]["name"]);
move_uploaded_file($_FILES["img5"]["tmp_name"], $uploadPath . $_FILES["img5"]["name"]);

$sql = "INSERT INTO produk (nama_produk, id_barang, no, deskripsi, harga, tb, tahun, kapasitas, image1, image2, image3, image4, image5,
        PeralatanMasak, Senter, Bantal, PisauLipat, EmergencyLamp, MejaLipat, KursiLipat,
        Matras, Ponco, Pluit, PeralatanSanitasi, Binocular)
        VALUES ('$nama_produk', '$id_barang', '$no', '$deskripsi', '$harga', '$tb', '$tahun', '$kapasitas',
        '$vimage1', '$vimage2', '$vimage3', '$vimage4', '$vimage5', '$PeralatanMasak', '$Senter', '$Bantal',
        '$PisauLipat', '$EmergencyLamp', '$MejaLipat', '$KursiLipat', '$Matras', '$Ponco', '$Pluit',
        '$PeralatanSanitasi', '$Binocular')";

$query = mysqli_query($koneksidb, $sql);

if ($query) {
    echo "<script type='text/javascript'>
            alert('Berhasil tambah data.');
            window.location = 'produk.php';
        </script>";
} else {
    echo "MySQL Error: " . mysqli_error($koneksidb);
    echo "<br/>";
    echo "Pesan Error: " . mysqli_error($koneksidb);

    echo "<script type='text/javascript'>
            alert('Terjadi kesalahan, silahkan coba lagi!'); 
            window.location = 'tambahproduk.php';
        </script>";
}
?>
