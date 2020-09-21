<?php 
session_start();
$total = 0;
$total_price = 0;
$output = '<table class="table-shopping-cart">
			<tr class="table_head">
				<th class="column-1">Sản phẩm</th>
				<th class="column-2"></th>
				<th class="column-3">Giá</th>
				<th class="column-4">Số lượng</th>
				<th class="column-5">Thành tiền</th>
			</tr>';

if(isset($_SESSION['cart'])){

		foreach($_SESSION['cart'] as $keys => $values){

		$output .= '

			<tr class="table_row">

				<td class="column-1">
					<button class="cart-img-product b-rad-4 o-f-hidden delete" id="'.$values["product_id"].'">
					<img src="upload/product/'.$values["product_img"].'" alt="IMG">
				</button>
				</td>
				<td class="column-2">'.$values['product_name'].'<br/>
				(Size: '.$values["product_size"]. ' -  Color: '.$values["product_color"].')
				</td>
				<td class="column-3">'.number_format($values['product_price']).'đ</td>
				<td class="column-4">
					<div class="flex-w bo5 of-hidden w-size17">
		
						<input type="hidden" class="pid" value="'.$values["product_id"].'">
						<input type="number" class="size8 m-text18 t-center  itemQty"  name="num-product1" value="'.$values['product_quantity'].'">

					
					</div>

				</td>
				<td class="column-5">'.number_format($values['product_price'] * $values['product_quantity']).'đ</td>
			</tr>

		';
		$total_price = $total_price +($values['product_quantity'] * $values['product_price']);
	}
	
	
	if($total_price == 0){
		$output .= '<h3 style="margin:10px">Giỏ hàng rỗng!</h3>';
	}
}

else{
	$output .= 'Giỏ hàng rỗng';
}
$output .= '</table>';
$data = array(

	'show_cart' => $output,
	'total_cart' => number_format($total_price).'đ'

);
echo json_encode($data);
?>