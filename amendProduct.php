<?php
	//Make connection to database
	include 'crud/connection.php';

	if (isset($_POST)) 
	{
	  $id=$_POST['productid'];
	  $name=$_POST['name'];
      $price=$_POST['price'];
      $discount=$_POST['discount'];
      $productdescription=$_POST['proddesc'];
      $allergyinformation=$_POST['allergyinfo'];
      $minimumquantity=$_POST['minquantity'];
      $maximumquantity=$_POST['maxquantity'];
      $productimage=$_POST['prodimg'];
      $rating=$_POST['ratimg'];
      $shopType = $_POST['shopType'];

      $updateproduct_display = "UPDATE PRODUCT SET PRODUCT_NAME ='".$name."', PRODUCT_DESC ='".$productdescription."', ALLERGY_INFO = '".$allergyinformation."', PRODUCT_IMAGE = '".$productimage."', PRODUCT_RATING = '".$rating."', PRODUCT_PRICE = '".$price."', PRODUCT_DISCOUNT = '".$discount."', MINIMUM_QUANTITY = '".$minimumquantity."', MAXIMUM_QUANTITY = '".$maximumquantity."', FK1_SHOP_ID = '".$shopType."' WHERE PRODUCT_ID =". $id;

      $update_result = oci_parse($conn, $updateproduct_display);
      oci_execute($update_result);
      //echo $updateproduct_display;
      //die();

      //if ($row = oci_fetch_assoc($update_result) > 0) 
      //{
      	echo header("Location: displayProduct.php");
      //}

	}

		
?>