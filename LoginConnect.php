<?php

include('config.php');

if (isset($_POST['SignIn'])) {
    // استلام البريد الإلكتروني وكلمة المرور من النموذج
    $Email = $_POST["Email"];
    $Password = $_POST["Password"];

    // تنفيذ عملية التحقق من تسجيل الدخول
    $sql = "SELECT Cus_Email, Cus_Password FROM coustmer WHERE Cus_Email = '$Email'";
    $result = $con->query($sql);

    if ($result && $result->num_rows > 0) {
        $row = $result->fetch_assoc();
        if ($row['Cus_Password'] == $Password) {
			
            echo "<script> alert ('Login successful, redirecting to the next page...');window.location.href = 'HomePage.html?msg=success'; </script>"; 
			exit();
        } else {
            echo  "<script> alert ('Login failed: Invalid password,  try again!');window.location.href = 'page.html?msg=success'; </script>";
			exit();
        }
    } else {
		echo  "<script> alert ('Login failed: Invalid email, try again!');window.location.href = 'page.html?msg=success'; </script>";
			exit();
        
    }

    $con->close();
}
?>