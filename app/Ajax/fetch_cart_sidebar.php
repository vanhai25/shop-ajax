<?php 
session_start();
$total_price = 0;
$total_item = 0;

$output = '';
//  kiểm tra có tồn tại giỏ hàng 
if(isset($_SESSION['cart'])){

	foreach($_SESSION['cart'] as $keys => $values){
		$output .='
			<li class="header-cart-item">
				<button class="header-cart-item-img delete" id="'.$values["product_id"].'">
					<img src="upload/product/'.$values["product_img"].'" alt="IMG">
				</button>



				<div class="header-cart-item-txt">
					<a class="header-cart-item-name">
						'.$values["product_name"].'
					</a>

					<span class="header-cart-item-info">
						'.$values["product_quantity"].' x '.number_format($values["product_price"]).'đ
					</span>
				</div>

			</li>
	


		';
		$total_price = $total_price +($values['product_quantity'] * $values['product_price']);
		$total_item = $total_item + $values['product_quantity'];
	}

	if($total_price == 0){
		$total_price = 'Giỏ hàng rỗng!';
	}
	else{
		$total_price = 'Tổng tiền: '.number_format($total_price).'đ';
	}

}
else{
	$output .= ' Giỏ hàng rỗng!';
}

$data = array(
	'cart_details' => $output,
	'total_price' => 	$total_price,
	'total_item' => $total_item
);
echo json_encode($data);
?>