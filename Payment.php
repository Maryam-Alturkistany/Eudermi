<?php
include ('config.php');

if (isset($_POST['checkout'])) {
    $CARDNUMBER = $_POST['cardnumber'];
    $EXPDATE = $_POST['expdate'];
    $CVV = $_POST['cvv'];
    $Cus_Id = 1;
    $orderid = 1;
    $Amount = '90';

    $insert = "INSERT INTO payment (OrderID, Cus_ID, ExpariteDate, CVV, Amount, CardNo)
              VALUES ('$orderid', '$Cus_Id', '$EXPDATE', '$CVV', '$Amount', '$CARDNUMBER') ";
              
    if (mysqli_query($con, $insert)) {
        echo "<script> alert ('Successfully Registered!'); window.location.href = 'HomePage.html?msg=success'; </script>";
    } else {
        echo "<script> alert ('Something went wrong, try again!'); window.location.href = 'payment.html?msg=success'; </script>";
    }
}
$con->close();
?>