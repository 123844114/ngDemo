<?php
header("content-type:application/json");
$db_host="localhost";
$db_user="root";
$db_pwd="";
$db_name='food';
$conn=mysqli_connect($db_host,$db_user,$db_pwd,$db_name);//连接数据库
$sql = "SET NAMES UTF8";
$result = mysqli_query($conn,$sql);
//以上信息为连接数据库
//*************//
$uname = $_REQUEST['username'];//接收前台的用户名
$pwd = $_REQUEST['pwd'];//接收前台的密码
//从前台获取用户名和密码后需要跟数据库做匹配
$sql="SELECT * FROM `fd-user` WHERE `name` = '$uname' AND `password` = '$pwd'";
$result = mysqli_query($conn,$sql);//执行sql语句
//$row=mysqli_fetch_assoc($result);//获取结果集中的一行
$rows=[];
if($row=mysqli_fetch_assoc($result)){//如果能匹配上，则返回json对象
    $rows[]=$row;
    echo json_encode($rows);
}else{//否则，则返回json对象{msg: false}
    echo json_encode($rows);
}










//返回给客户端的信息：{'success':'true','msg':'恭喜您，登录成功'}、{'success':'false','msg':'用户名密码有误，请重新输入'}
//$retOK = ['success'=>true,'msg'=>'恭喜您，登录成功'];//返回成功信息
//$retNO = ['success'=>false,'msg'=>'用户名密码有误，请重新输入'];//返回失败信息
//if($uname=='mayun'&&$pwd=='123456'){
//    print_r(json_encode($retOK));
//}else{
//    print_r(json_encode($retNO));
//}
