<?php

$date = $_POST['date'];
$amount = $_POST['amount'];
$comments = $_POST['comments'];
$type = $_POST['type'];
$dayofweek = $_POST['dayofweek'];

try {

	$con = new PDO("mysql:host=<hostname>; dbname=<database name>", '<user name>', '<password>');
	$con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	//$result = $con->prepare("SELECT date FROM `compost` WHERE date = '$date'");
	//$num_rows = mysql_num_rows($result);
	
/*	if ($result > 0)
	{
			if ($type == "Wood")
		{
			//$query = $con->prepare("INSERT INTO nwilson_compostData.compost(day_of_week, `date`, daily_carbon, comments) VALUES('$dayofweek', '$date', '$amount', '$comments')");
			$query = $con->prepare("UPDATE compost SET daily_carbon='$amount', comments='$comments' where `date`='$date'");
			$query->execute();
			//conn->execute($result);
		}
		
		else
		{
			$query = $con->prepare("UPDATE compost SET pre_consumer_foods='$amount', comments='$comments' where `date`='$date'");
			$query->execute();
		}
		
	}
	*/
	//else
	//{
		if ($type == "Wood")
		{
			$query = $con->prepare("INSERT INTO nwilson_compostData.compost(day_of_week, `date`, daily_carbon, comments) VALUES('$dayofweek', '$date', '$amount', '$comments')
			ON DUPLICATE KEY UPDATE daily_carbon='$amount'");
			$query->execute();
			//conn->execute($result);
		}
		else
		{
			$query = $con->prepare("INSERT INTO nwilson_compostData.compost(day_of_week, `date`, pre_consumer_foods, comments) VALUES('$dayofweek', '$date', '$amount', '$comments')
			ON DUPLICATE KEY UPDATE pre_consumer_foods='$amount'");
			$query->execute();
		//conn->execute($result);
		}
	//}
	
	/*if ($query) 
	{
		$query["success"] = 1;
		$query["message"] = "Record successfully created.";
		
		echo json.encode($response);
	}
	else
	{
		$query["success"] = 0;
		$query["message"] = "Failed to add record.";
		echo json_encode($response);
	} */
	
	

} catch(PDOException $ex) {
   echo "Something bad happened:" . $ex->getMessage();
   }
?>