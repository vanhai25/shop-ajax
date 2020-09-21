<?php 
class BillController extends BaseController{

	public function index(){
		if(!isset($_COOKIE['total_price']) && empty($_COOKIE['total_price'])){
			header('location:index.php');
			exit;
		}

		// Biến ở head và header
		$title = "Hóa đơn của bạn";
		// Kết thúc

		require url('Views.fontend.head');
		require url('Views.fontend.header');

		return $this->view('fontend.bill.index',[
			
		]);
	}
}
?>