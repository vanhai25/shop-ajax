<?php
class CategoryController extends BaseController{
	private $categoryModel;
	public function __construct(){
		$this->loadModel('CategoryModel');
		$this->categoryModel = new CategoryModel;
	}

	public function index(){
		$quantity = 9;
		$pagi = 1;

		if($_SERVER['REQUEST_METHOD'] === 'GET'){
			if(isset($_GET['url']) && !empty($_GET['url'])){
				$url = htmlspecialchars($_GET['url'], ENT_QUOTES, 'UTF-8');
				
			}
			else{
				header('location:trang-chu');
				exit;
			}

			if(isset($_GET['pagi']) && !empty($_GET['pagi'])){
				$pagi = htmlspecialchars($_GET['pagi'], ENT_QUOTES, 'UTF-8');
				
			}
			
		}



		$position = ($pagi-1)*$quantity;
		$product = $this->categoryModel->getCategory($url,$position,$quantity);
		$totalProduct = count($this->categoryModel->getCategory($url));

		$pager = new Pager($totalProduct,$pagi,$quantity, 3);
		$showPagination = $pager->showPagination();

		$allCategory = $this->categoryModel->getAll('table_catalog');
		
		if($url == 'Tat-ca'){
			$title = 'Tất cả sản phẩm';
		}
		else{
			$title = $product[0]->name;
		}
		

		require url('Views.fontend.head');
		require url('Views.fontend.header');
		
		return $this->view('fontend.category.index',[
			'product' => $product,
			'allCategory' => $allCategory,
			'showPagination' => $showPagination,
		
		]); 
		
	}

	
}
?>