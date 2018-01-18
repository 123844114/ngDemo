<?php
header("content-type:application/json");
$db_host="localhost";
$db_user="root";
$db_pwd="";
$db_name='food';
$conn=mysqli_connect($db_host,$db_user,$db_pwd,$db_name);//连接数据库
$sql = "SET NAMES UTF8";
$result = mysqli_query($conn,$sql);
////id
$id = $_REQUEST['id'];
////查询数据select  id=$id  精确查询
$sql = "SELECT * FROM `fd-pro` WHERE `id` = $id";
$result = mysqli_query($conn,$sql);
$row=mysqli_fetch_assoc($result);
echo json_encode($row);