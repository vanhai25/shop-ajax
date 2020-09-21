<?php 
class CartController extends BaseController{

	private $cartModel;
	public function __construct(){
		$this->loadModel('CartModel');
		$this->cartModel = new CartModel;
	}

	public function index(){
		if($_SESSION['total_cart'] == 0){
			header('location:trang-chu');
			exit;
		}
		$province = $this->cartModel->getProvince();	
		$local = $this->cartModel->getLocal();

		// Biến ở head và header
		$title = "Giỏ hàng";
		// Kết thúc
		require url('Views.fontend.head');
		require url('Views.fontend.header');
		
		return $this->view('fontend.cart.index',[
			'cartModel' => $this->cartModel,
			'province' => $province,
			'local' => $local
		]);
	}
}

?>