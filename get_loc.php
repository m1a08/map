<?php
		$username = "root";
		$password = "";
		$hostname = "localhost"; 

		//connection to the database
		$dbhandle = mysql_connect($hostname, $username, $password) 
		or die("Unable to connect to MySQL");
		//echo "Connected to MySQL<br>";

		//select a database to work with
		$selected = mysql_select_db("map",$dbhandle) 
		or die("Could not select examples");
  
		$user= $_POST['field2value'];
		
		$arr = array();
		
		$query = "select * from loc_details where user_name='$user'";
		$result = mysql_query($query);
		
		while($obj = mysql_fetch_object($result)) {
			$arr[] = $obj;
		}

		print json_encode($arr);
?>