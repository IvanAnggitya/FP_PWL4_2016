<?php

function login_admin($nama,$pass){
	global $link;

	$sql 	= "SELECT * FROM admin WHERE nama='$nama' AND password='$pass'";
	if($result =mysqli_query($link, $sql)){
		if(mysqli_num_rows($result)!=0) return true;
		else return false;
	}
}

?>