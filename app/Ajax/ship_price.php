<?php 
session_start();

$ship = number_format($_POST['option']).'đ';
$total = number_format($_SESSION['total_cart'] + $_POST['option']).'đ' ;


$data =[
	'ship' => $ship,
	'total' => $total

];
echo json_encode($data);
?>