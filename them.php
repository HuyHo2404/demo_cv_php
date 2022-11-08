<?php

/*$truong = $_POST['truong'];
$start_end = $_POST['start_end'];
$noidung = $_POST['noidung'];
$thoigian = $_POST['thoigian'];

require_once 'ketnoi.php';

$themsql = "INSERT INTO education
(truong, start_end, noidung, thoigian) VALUES ('$truong', '$start_end', '$noidung', '$thoigian')";

//thuc thi cau lenh
mysqli_query($conn, $themsql);
    echo '<h1>Them thành công</h1>';*/

    $truong = $start_end = $noidung = $thoigian = '';
    require_once('dbhelp.php');
    if(!empty($_POST)){
        $id = '';
        if(isset($_POST['id'])){
            $id = $_POST['id'];
        }
        if(isset($_POST['truong'])){
            $truong = $_POST['truong'];
        }
        if(isset($_POST['start_end'])){
            $start_end = $_POST['start_end'];
        }
        if(isset($_POST['noidung'])){
            $noidung = $_POST['noidung'];
        }
        if(isset($_POST['thoigian'])){
            $thoigian = $_POST['thoigian'];
        }

        //fix loi sql intraction
        $truong = str_replace('\'','\\\'', $truong);
        $start_end = str_replace('\'','\\\'', $start_end);
        $noidung = str_replace('\'','\\\'', $noidung);
        $thoigian = str_replace('\'','\\\'', $thoigian);
        
        if($id != ''){
            //update
            $sql = "update education set truong='$truong',start_end='$start_end',noidung='$noidung',thoigian='$thoigian' where id =".$id;
        }
        else{
            //insert 
            $sql = "insert into education(truong,start_end,noidung,thoigian) values('$truong','$start_end','$noidung','$thoigian')";
        }
        execute($sql);
        // direction to index.php
        header('Location: index1.php');
        die();
    }
    $id = '';
    if(isset($_GET['id'])){
        $id = $_GET['id'];
        $sql = 'select * from education where id = '.$id;
        $eduList = executeResult($sql);
        if($eduList != null && count($eduList) > 0){
            $edu = $eduList[0];
            $truong = $edu['truong'];
            $start_end = $edu['start_end'];
            $noidung = $edu['noidung'];
            $thoigian = $edu['thoigian'];
        }else {
            $id = '';
        }
    }
?>

