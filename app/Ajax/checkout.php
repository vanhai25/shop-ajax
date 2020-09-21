<?php 
require"../Core/DBConnect.php";
require"../Models/CartModel.php";
session_start();
$model = new CartModel;


	$province = htmlspecialchars($_POST['province'], ENT_QUOTES, 'UTF-8');
	$adr_ship = htmlspecialchars($_POST['adr_ship'], ENT_QUOTES, 'UTF-8'); 
	$district = htmlspecialchars($_POST['district'], ENT_QUOTES, 'UTF-8'); 
	$name_checkout = htmlspecialchars($_POST['name_checkout'], ENT_QUOTES, 'UTF-8'); 
	$mail_checkout = htmlspecialchars($_POST['mail_checkout'], ENT_QUOTES, 'UTF-8'); 
	$tel_checkout = htmlspecialchars($_POST['tel_checkout'], ENT_QUOTES, 'UTF-8'); 
	$note_checkout = htmlspecialchars($_POST['note_checkout'], ENT_QUOTES, 'UTF-8'); 
	$address = $province.' - '.$district.' - '.$adr_ship;
	$total_price = $_SESSION['total_cart'];
	$ship_price = htmlspecialchars($_POST['ship_price'], ENT_QUOTES, 'UTF-8'); 

	$customer = $model->setCustomer($name_checkout,$tel_checkout,$mail_checkout,$address);
	if($customer){
		$bill = $model->setBill($customer,$total_price,$ship_price,$note_checkout);
		if($bill){
			foreach($_SESSION['cart'] as $key => $values){
				$id_product = $values['product_id'];
				$quantity = $values['product_quantity'];
				$option = $values['product_size'].' '.$values['product_color'];
				$billDetail = $model->setBillDetail($id_product,$bill,$quantity,$option);
			}
			if($billDetail){
				
				setcookie('name_checkout', $name_checkout, time()+ 60, '/');
				setcookie('tel_checkout', $tel_checkout, time()+ 60, '/');
				setcookie('address', $address, time()+ 60, '/');
				setcookie('total_price', $total_price + $ship_price, time()+ 60, '/');

				

				unset($_SESSION['cart']);
				unset($_SESSION['total_cart']);
				echo 'yes';
			}
		
		}
	}


?>