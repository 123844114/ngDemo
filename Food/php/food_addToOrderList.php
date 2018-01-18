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
$pid = $_REQUEST['pid'];
$count = $_REQUEST['count'];
//自动生成
$orderNum = date('Ymd')+rand(1,1000);//订单编号
$time=date("Y-m-d H:i:s");//下单日期
$sql="INSERT INTO `fd-order` (`uid`, `orderNum`, `time`, `pid`, `count`) VALUES ('$uid', '$orderNum', '$time', '$pid', '$count')";//插入数据
$result = mysqli_query($conn,$sql);//执行sql语句
if($result){
    echo json_encode('ok');
}