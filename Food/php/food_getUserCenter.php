<?php
header("content-type:application/json");
$db_host="localhost";
$db_user="root";
$db_pwd="";
$db_name='food';
$conn=mysqli_connect($db_host,$db_user,$db_pwd,$db_name);//连接数据库
$sql = "SET NAMES UTF8";
$result = mysqli_query($conn,$sql);
////
@$uname=$_REQUEST['uname'];
@$uphone=$_REQUEST['uphone'];
@$uaddress=$_REQUEST['uaddress'];
@$upwd=$_REQUEST['upwd'];
/////sql添加
$sql="INSERT INTO `fd-user` (`id`, `name`, `phone`, `address`,`password`) VALUES
(NULL, '$uname', '$uphone', '$uaddress','$upwd')";
$result = mysqli_query($conn,$sql);//执行sql语句
$arr = [];
if($result){//如果插入成功，则返回json对象{msg: true}
    $arr['msg']=true;
    echo json_encode($arr);
}else{//否则，则返回json对象{msg: false}
    $arr['msg']=false;
    echo json_encode($arr);
}