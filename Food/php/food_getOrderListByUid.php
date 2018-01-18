<?php
header("content-type:application/json");
$db_host="localhost";
$db_user="root";
$db_pwd="";
$db_name='food';
$conn=mysqli_connect($db_host,$db_user,$db_pwd,$db_name);//连接数据库
$sql = "SET NAMES UTF8";
$result = mysqli_query($conn,$sql);
//从前台接收的数据
$uid = $_REQUEST['uid'];
//$sql="SELECT `pid` FROM `fd-order` WHERE `uid` = $uid";
$sqltwo="select a.orderNum, b.id,b.name,b.price,b.info,b.src from `fd-order` a,`fd-pro` b where a.pid=b.id AND a.uid=18";
$result=mysqli_query($conn,$sqltwo);
$rows=[];
while($row=mysqli_fetch_assoc($result)){
    $rows[]=$row;
}
echo json_encode($rows);
