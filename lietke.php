<?php
require_once 'ketnoi.php';

//cau lenh
//$lietke_sql = "SELECT * FROM education order by truong, start_end, noidung, thoigian";

//thuc thi
//$result =  mysqli_query($conn, $lietke_sql);    

//duyet qua result rồi in ra
//while ($edu = mysqli_fetch_assoc($result)){}
if (isset($_GET['s']) && $_GET['s'] != '') {
    $sql = 'select * from education where truong like "%' . $_GET['s'] . '%"';
} else {
    $sql = 'select * from education';
}   
$eduList = executeResult($sql);
foreach ($eduList as $edu) {
    echo '<tr>
        <td>' . $edu['id'] . '</td>
        <td>' . $edu['truong'] . '</td>
        <td>' . $edu['start_end'] . '</td>
        <td>' . $edu['noidung'] . '</td>
        <td>' . $edu['thoigian'] . '</td>
    </tr>';
}
?>