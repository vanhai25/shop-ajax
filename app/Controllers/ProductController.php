<?php 
class ProductController extends BaseController{
	private $productModel;
	function __construct(){
		$this->loadModel('ProductModel');
		$this->productModel = new productModel;
		

	}
	public function index(){
		if($_SERVER['REQUEST_METHOD'] === 'GET'){
			if(isset($_GET['title']) && !empty($_GET['title']) && isset($_GET['id']) && !empty($_GET['id'])){
				$tt = htmlspecialchars($_GET['title'], ENT_QUOTES,'UTF-8');
				$id = htmlspecialchars($_GET['id'], ENT_QUOTES, 'UTF-8');
			}
			else{
				header('location:trang-chu');
				exit;
			}
		}
		$title = "Trang chi tiết";
		$price = $this->productModel->getPriceSelect($id);
		$product = $this->productModel->getProductDetail($id,$tt);
		$optionSize = $this->productModel->getOptionSizeProduct($id);
		$optionColor = $this->productModel->getOptionColorProduct($id);


		// Biến ở head và header
		$title = "Sản phẩm chi tiết";
		// Kết thúc
		require url('Views.fontend.head');
		require url('Views.fontend.header');
		
		return $this->view('fontend.product.index',[
			'productModel' => $this->productModel,
			'product' => $product,
			'price' => $price,
			'optionColor' => $optionColor,
			'optionSize' => $optionSize,
		]);
	}

}
?>