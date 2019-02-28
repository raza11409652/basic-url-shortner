<?php
define('user','root');
define('host','localhost');
define('password','');
define('dbName','link');
class controller{
	public $connection ;
    function __construct(){
        $conn=mysqli_connect(host,user,password , dbName);
		//mysql_select_db(dbName,$conn);
		$this->connection = $conn;
		if(!$conn){
  		echo "connectivity Error".mysql_error();
			}
	}
	function getID($table){
		$sql="select MAX(id) as max_id from $table";
		//echo $sql;
	$res=mysqli_query( $this->connection , $sql );
		$data=mysqli_fetch_array($res);
		$max_id=$data['max_id'];
		$max_id=$max_id+1;
		return $max_id;
	}
} 
?>