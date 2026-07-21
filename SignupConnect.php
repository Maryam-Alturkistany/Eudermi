<?php

include('config.php');

if(isset($_POST['signUp'])){
    $Name = $_POST['Name'];
    $PhoneNumber = $_POST['PhoneNumber'];
    $Age = $_POST['Age'];
    $Email = $_POST['Email'];
    $Password = $_POST['Password'];
    $insert = "INSERT INTO coustmer (Cus_Name, Cus_PhoneNumber, Cus_Age, Cus_Email, Cus_Password) VALUES ('$Name', '$PhoneNumber', '$Age', '$Email', '$Password')";
    if (mysqli_query($con, $insert)){
    echo "<script> alert ('Successfully Registered!');window.location.href = 'HomePage.html?msg=success'; </script>"; 
    }else{
        echo "<script> alert ('Something wrong, try Again!');window.location.href = 'page.html?msg=success'; </script>"; 
        exit();
    }
}


$con->close();
?>
