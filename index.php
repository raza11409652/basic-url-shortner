<?php
include_once "view/controller.php";
//$handler=new controller();


    session_start();
    function checkFileExist($filePath)
    {
        if(file_exists($filePath))
        {
            require_once $filePath;
        }
        else{
            require_once "view/home.php";
        }
    }
    function redirect($url){
        header("Location: ".$url);
    }
    function fetchData($url)
    {
        $conn=mysqli_connect(host,user,password , dbName);
        $sql="select originalurl from dataset where userkey='$url';";
        $res=mysqli_query($conn ,$sql);
       while($data=mysqli_fetch_array($res)){
           redirect($data['originalurl']);
       }

    }
    if(isset($_REQUEST['view']))
    {
        $url=$_REQUEST['view'];
        $filePath="view/".$url.".php";
        checkFileExist($filePath);
    }
    if(isset($_REQUEST['r']))
    {
       $url=$_REQUEST['r'];
       fetchData($url);
    }
    else{
        require_once "view/home.php";
    }
?>
