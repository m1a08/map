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
  
		$add= $_POST['field2value'];
		$user= $_POST['field3value'];

		$address = $add; // Google HQ
        $prepAddr = str_replace(' ','+',$address);
        $geocode=file_get_contents('http://maps.google.com/maps/api/geocode/json?address='.$prepAddr.'&sensor=false');
        $output= json_decode($geocode);
        $latitude = $output->results[0]->geometry->location->lat;
        $longitude = $output->results[0]->geometry->location->lng;
		
		$query = "insert into loc_details(user_name,address,latitude,longitude) values('$user','$add',$latitude,$longitude)";
		$result = mysql_query($query);
		if($result){
    		echo("successfully inserted");
		} else{
    		echo("enter some other user name");
		}
?>