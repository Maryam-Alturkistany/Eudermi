<html lang="en">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="favicon-16x16.png">
<title>| Products</title>

<style>
    #cart-button {
        position: absolute;
        top: 25px;
        left: 11px;
        padding: 10px 25px;
        background-color: #9ebd72;
        /* Light Green */
        color: #fff;
        /* White text */
        border: none;
        border-radius: 20px;
        cursor: pointer;
    }

    #cart-button:hover {

        background-color: #647d42;
        /* Light Green */
        color: #fff;
        /* White text */
    }

    #logo-image {
        width: 100px;
        height: 50px;
        position: absolute;
        top: 20px;
        right: 15px;
    }

    nav {
        margin-top: 60px;
        background-color: #FAF8F8;
        ;
        /* White */
        overflow: hidden;
        border-bottom: 1px solid #c1c0c0;
        /* Grey border on top */
    }

    nav a {
        float: left;
        display: block;
        color: #000;
        /* Black */
        text-align: center;
        padding: 12px 20px;
        text-decoration: none;
    }

    nav a:hover {
        background-color: #bccea3;
        /* Light grey on hover */
        color: black;
    }

    * {
        box-sizing: border-box;

    }

    #cart {
        border: 1px solid #ccc;
        padding: 10px;
        margin-top: 20px;
    }

    #cart-items {
        list-style-type: none;
        padding: 0;
    }

    #cart-total {
        font-weight: bold;
    }

    body {
        font-family: Arial, sans-serif;
        background-color: #FAF8F8;
        margin: 0;
        padding: 20px;
        overflow: auto;
    }

    h1 {
        text-align: center;
        color: #515151;
        font-weight: 300;
        padding-top: 15px;
        margin-bottom: 20px;
        font-size: 30px;
        font-weight: 300;
    }


    .product h3 {
        margin-top: 0;
    }

    .product h4 {
        margin: 10px 0;
    }

    .product p {
        font-weight: bold;
    }



    .product a {
        background-color: #9ebd72;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
        margin: 10px 0;
    }

    .product a:hover {
        background-color: #647d42;
    }


    .product {
        background-color: #FAFAF5;
        border: 1px solid #CAD3C3;
        border-radius: 5px;
        padding: 24px 20px;
        text-align: center;
        width: 340px;
        float: left;
        margin-top: 20px;
        margin-left: 10px;
        margin-right: 10px;

    }

    #Proimg {
        width: 100%;
        height: 200px;
        object-fit: contain;
    }

    .center {
       
        margin-left: 82px;
       
    }
</style>
</head>

<body>
    <button id="cart-button" onclick="window.location.href='Order.html'">Cart</button>
    <img src="logo.png" alt="Logo" id="logo-image">
    <nav>
        <a href="HomePage.html">Home</a>
        <a href="Products.php">Product</a>
        <a href="Customize.html">Customize your own cream</a>
        <a href="consultation.html">Get consultation</a>
        <a href="technicalSupport.html">Technical Support</a>
    </nav>
    <h1>Products</h1>
    <?php
    include("config.php");
    $result = mysqli_query($con, "SELECT * FROM product");
    while ($row = mysqli_fetch_array($result)) {
        echo "
          <main class='center'>
               <div class='product'>
                   <img src='{$row['ProductImg']}' id='Proimg'>
                   <h4>{$row['ProductName']}</h4>
                   <small>{$row['Description']}</small>
                   <p>{$row['Price']}</p>
                  <a herf= 'Order.html'>Add to Cart</a>
               </div>
          </main>
        ";
    }
?>

</body>
</html>