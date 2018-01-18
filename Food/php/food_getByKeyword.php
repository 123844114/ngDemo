<?php
header("content-type:application/json");
$db_host="localhost";
$db_user="root";
$db_pwd="";
$db_name='food';
$conn=mysqli_connect($db_host,$db_user,$db_pwd,$db_name);//连接数据库
$sql = "SET NAMES UTF8";
$result = mysqli_query($conn,$sql);
////kw
$kw=$_REQUEST['kw'];
////查询数据select  $kw   模糊查询
$sql = "SELECT * FROM `fd-pro` WHERE `name` LIKE '%$kw%' OR `info` LIKE '%$kw%'";
$result = mysqli_query($conn,$sql);//执行sql语句
//$row=mysqli_fetch_assoc($result);
$rows=[];
while($row=mysqli_fetch_assoc($result)){//mysqli_fetch_assoc()每次返回一行数据，取不到数据返回false
    $rows[]=$row;//接受结果集
}
echo json_encode($rows);