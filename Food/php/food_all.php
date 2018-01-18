<?php
//连接数据库
//查找表
//sql语句
header("content-type:application/json");
$db_host="localhost";
$db_user="root";
$db_pwd="";
$db_name='food';
$conn=mysqli_connect($db_host,$db_user,$db_pwd,$db_name);//连接数据库
$sql = "SET NAMES UTF8";
$result = mysqli_query($conn,$sql);
$sql='SELECT * FROM `fd-pro`';//搜索
$result = mysqli_query($conn,$sql);//执行sql语句
//$row=mysqli_fetch_assoc($result);
while($row=mysqli_fetch_assoc($result)){//mysqli_fetch_assoc()每次返回一行数据，取不到数据返回false
    $rows[]=$row;//接受结果集
}
echo json_encode($rows);

