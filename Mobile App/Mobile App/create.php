<?php

$date = $_POST['date'];
$amount = $_POST['amount'];
$comments = $_POST['comments'];
$type = $_POST['type'];
$dayofweek = $_POST['dayofweek'];
$tempPile = $_POST['tempPile'];
$temperature = $_POST['temperature'];


try {

	$con = new PDO("mysql:host=localhost; dbname=nwilson_compostData", 'nwilson_user2', '12345');
	$con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
		if ($type == "Wood")
		{
			if ($tempPile == "Pile 1 temp")
			{
				$query = $con->prepare("INSERT INTO nwilson_compostData.compost(day_of_week, `date`, daily_carbon, comments, pile1_temp) VALUES('$dayofweek', '$date', '$amount', '$comments',
				'$temperature') ON DUPLICATE KEY UPDATE daily_carbon='$amount', pile1_temp='$temperature'");
				$query->execute();
			}
			else if ($tempPile == "Pile 2 temp")
			{
				$query = $con->prepare("INSERT INTO nwilson_compostData.compost(day_of_week, `date`, daily_carbon, comments, pile2_temp) VALUES('$dayofweek', '$date', '$amount', '$comments',
				'$temperature') ON DUPLICATE KEY UPDATE daily_carbon='$amount', pile2_temp='$temperature'");
				$query->execute();
			}
			else if ($tempPile == "Pile 3 temp")
			{
				$query = $con->prepare("INSERT INTO nwilson_compostData.compost(day_of_week, `date`, daily_carbon, comments, pile3_temp) VALUES('$dayofweek', '$date', '$amount', '$comments',
				'$temperature') ON DUPLICATE KEY UPDATE daily_carbon='$amount', pile3_temp='$temperature'");
				$query->execute();
			}
			else if ($tempPile == "In-vessel temp")
			{
				$query = $con->prepare("INSERT INTO nwilson_compostData.compost(day_of_week, `date`, daily_carbon, comments, invessel_temp) VALUES('$dayofweek', '$date', '$amount', '$comments',
				'$temperature') ON DUPLICATE KEY UPDATE daily_carbon='$amount', invessel_temp='$temperature'");
				$query->execute();
			}
			else 
			{
				$query = $con->prepare("INSERT INTO nwilson_compostData.compost(day_of_week, `date`, daily_carbon, comments) VALUES('$dayofweek', '$date', '$amount', '$comments')
				ON DUPLICATE KEY UPDATE daily_carbon='$amount'");
				$query->execute();
			}
			
			
			
			
		}
		else
		{
			if ($tempPile == "Pile 1 temp")
			{
				$query = $con->prepare("INSERT INTO nwilson_compostData.compost(day_of_week, `date`, pre_consumer_foods, comments, pile1_temp) VALUES('$dayofweek', '$date', '$amount', '$comments',
				'$temperature') ON DUPLICATE KEY UPDATE pre_consumer_foods='$amount', pile1_temp='$temperature'");
				$query->execute();
			}
			else if ($tempPile == "Pile 2 temp")
			{
				$query = $con->prepare("INSERT INTO nwilson_compostData.compost(day_of_week, `date`, pre_consumer_foods, comments, pile2_temp) VALUES('$dayofweek', '$date', '$amount', '$comments',
				'$temperature') ON DUPLICATE KEY UPDATE pre_consumer_foods='$amount', pile2_temp='$temperature'");
				$query->execute();
			}
			else if ($tempPile == "Pile 3 temp")
			{
				$query = $con->prepare("INSERT INTO nwilson_compostData.compost(day_of_week, `date`, pre_consumer_foods, comments, pile3_temp) VALUES('$dayofweek', '$date', '$amount', '$comments',
				'$temperature') ON DUPLICATE KEY UPDATE pre_consumer_foods='$amount', pile3_temp='$temperature'");
				$query->execute();
			}
			else if ($tempPile == "In-vessel temp")
			{
				$query = $con->prepare("INSERT INTO nwilson_compostData.compost(day_of_week, `date`, pre_consumer_foods, comments, invessel_temp) VALUES('$dayofweek', '$date', '$amount', '$comments',
				'$temperature') ON DUPLICATE KEY UPDATE pre_consumer_foods='$amount', invessel_temp='$temperature'");
				$query->execute();
			}
			else 
			{
				$query = $con->prepare("INSERT INTO nwilson_compostData.compost(day_of_week, `date`, pre_consumer_foods, comments) VALUES('$dayofweek', '$date', '$amount', '$comments')
				ON DUPLICATE KEY UPDATE pre_consumer_foods='$amount'");
				$query->execute();
			}
			
					
			
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