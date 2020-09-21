<?php 
class HomeController extends BaseController{
	private $homeModel;
	public function __construct(){
		$this->loadModel('HomeModel');
		$this->homeModel = new HomeModel;
		
	}
	public function index(){
		
		$newProduct = $this->homeModel->getNewProduct();
		$hotProduct = $this->homeModel->getHotProduct();
		$news = $this->homeModel->getNews();


		// Biến ở head và header
		$title = "Trang chủ";
		// Kết thúc
		require url('Views.fontend.head');
		require url('Views.fontend.header');

		return $this->view('fontend.home.index',[
			'homeModel' => $this->homeModel,
			'newProduct' => $newProduct,
			'hotProduct' => $hotProduct,
			'news' => $news
		]); 
	}
}
?>