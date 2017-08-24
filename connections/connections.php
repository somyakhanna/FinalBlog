<?php



$servername="localhost";
$username="root";
$password="";
$database="blo"; 



$connect=mysqli_connect($servername,$username,$password,$database);


if($connect->connect_error){
	 die('Error connecting to MySQL server.');
}

//echo "connected successfully";



?>