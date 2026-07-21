<?php

include ('config.php');


if (isset($_POST['Submit'])) {
	$Cus_Id = 1;
	$Issue = $_POST['Issue'];
	$Name = $_POST['Name'];
	$Email = $_POST['Email'];


	$insert = "INSERT INTO technicalSupport (Cus_ID , Issue , Cus_Name , Cus_Email) VALUES ('$Cus_Id','$Issue', '$Name' , '$Email')";
	if (mysqli_query($con, $insert)) {
		echo "<script> alert ('Successfully Registered!');window.location.href = 'technicalSupport.html?msg=success'; </script>";
	} else {
		echo "<script> alert ('Something wrong, try Again!');window.location.href = 'technicalSupport.html?msg=success' </script>";
	}
}
$con->close();

?>