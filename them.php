<?php

$truong = $_POST['truong'];
$start_end = $_POST['start_end'];
$noidung = $_POST['noidung'];
$thoigian = $_POST['thoigian'];

require_once 'ketnoi.php';

$themsql = "INSERT INTO education
(truong, start_end, noidung, thoigian) VALUES ('$truong', '$start_end', '$noidung', '$thoigian')";

//thuc thi cau lenh
mysqli_query($conn, $themsql);
    echo '<h1>Them thành công</h1>';
?>

