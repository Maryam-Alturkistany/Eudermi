<?php

include ('config.php');


if (isset($_POST['Submit'])) {
	$Cus_Id = 1;
	$Age = $_POST['age'];
	$Name = $_POST['name'];
	$Specialist = $_POST['specialist'];
    $Expertise = $_POST['Expertise'];
    $Day= $_POST['day'];
    $Time = $_POST['time'];


	$insert = "INSERT INTO consultation (Cus_ID , ExpertName , Expertise , Time , Day , Cus_Name, Cus_Age) VALUES ('$Cus_Id','$Specialist', '$Expertise' , '$Time' , '$Day', '$Name', '$Age')";
	if (mysqli_query($con, $insert)) {
		echo "<script> alert ('Successfully Submitied!');window.location.href = 'HomePage.html?msg=success'; </script>";
	} else {
		echo "<script> alert ('Something wrong, try Again!');window.location.href = 'consultation.html?msg=success' </script>";
	}
}
$con->close();

?>