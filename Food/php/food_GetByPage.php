<?php
//list页面功能
header("content-type:application/json");
$db_host="localhost";
$db_user="root";
$db_pwd="";
$db_name='food';
$conn=mysqli_connect($db_host,$db_user,$db_pwd,$db_name);//连接数据库
$sql = "SET NAMES UTF8";
$result = mysqli_query($conn,$sql);
$start=$_REQUEST['start'];
$count=$_REQUEST['count'];
//实现搜索功能
//页面初始的时候显示4条，每点击一次‘加载更多’追加4条信息
    $sql="SELECT * FROM `fd-pro` limit $start,$count";//搜索
    $result = mysqli_query($conn,$sql);//执行sql语句
//$row=mysqli_fetch_assoc($result);
$rows=[];//
    while($row=mysqli_fetch_assoc($result)){//mysqli_fetch_assoc()每次返回一行数据，取不到数据返回false
        $rows[]=$row;//接受结果集
    }
    echo json_encode($rows);

