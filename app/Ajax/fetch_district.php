<?php 
require"../Core/DBConnect.php";
require"../Models/CartModel.php";
$model = new CartModel;
$output = '<option value="">--Quận/Huyện--</option>';
if(isset($_POST['aid'])){
	$aid = $_POST['aid'];
	$result = $model->getDistrict($aid);
	if($result){
		foreach($result as $row){
			$output .= ' <option class="option" value="'.$row->ship_price.'">'.$row->name.'</option>';
		}
	}
}
$data = array(

	'state' => $output,


);
echo json_encode($data);
?>