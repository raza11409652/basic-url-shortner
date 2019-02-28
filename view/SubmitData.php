<?php
include_once "../view/controller.php"; 
class SubmitData{
    private $IP;
    public $link;
    private $shortenLink;
    private $id;
    private $obj;
    function __construct(){
        $this->obj= new controller();
        $this->id=$this->obj->getID('dataset');  
        $this->IP=$_SERVER['REMOTE_ADDR'];
    }
    function random_num($size) {
        $alpha_key = '';
        $keys = range('A', 'Z');
    
        for ($i = 0; $i < 2; $i++) {
            $alpha_key .= $keys[array_rand($keys)];
        }
    
        $length = $size - 2;
    
        $key = '';
        $keys = range(0, 9);
    
        for ($i = 0; $i < $length; $i++) {
            $key .= $keys[array_rand($keys)];
        }
    
        $this->link=$alpha_key . $key;
    }
    function checkUserKey($userKey){
        $sql="select * from dataset where userkey='$userKey';";
        $res=mysqli_query($this->obj->connection ,$sql);
        $count=mysqli_num_rows($res);
        return $count;
    }
    function genUrl($key){
        $host="localhost/practice/ruthvik/?r=";
        $this->shortenLink=$host.$key;
    }
    function insert($url){
     $sqlInsert="Insert into dataset values ('$this->id','$url','$this->link','$this->shortenLink','$this->IP')";
    // echo $sqlInsert;
    if(mysqli_query($this->obj->connection ,$sqlInsert)){
        //echo "1";
        echo $this->shortenLink;
    }
    else{
        echo "0";
    }
    }
}
if(isset($_POST)){
    $handler=new SubmitData();
    $url=$_POST['linkBox'];
    $userDefined=$_POST['aliasName'];
    if($userDefined!="" || $userDefined !=null){
       if($handler->checkUserKey($userDefined)==0){
           $handler->link=$userDefined;
        $handler->genUrl($userDefined);
        $handler->insert($url);
       }
       else{
           echo "-1"; //user specified key is taken
       }
    }
    else{
        $handler->random_num(6);
        $handler->genUrl($handler->link);
        $handler->insert($url);
    }
    
}
?>