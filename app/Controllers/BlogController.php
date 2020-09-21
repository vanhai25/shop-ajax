<?php 
class BlogController extends BaseController{
	private $blogModel;

	public function __construct(){
		$this->loadModel('BlogModel');
		$this->blogModel = new BlogModel;

	}

	public function index(){

		$quantity = 9;
		$pagi = 1;

		$position = ($pagi-1)*$quantity;
		$blog = $this->blogModel->getBlog($position,$quantity);
		$totalProduct = count($this->blogModel->getBlog());

		$pager = new Pager($totalProduct,$pagi,$quantity, 3);
		$showPagination = $pager->showPagination();

		$title = 'Blog';
		require url('Views.fontend.head');
		require url('Views.fontend.header');
		return $this->view('fontend.blog.index',[
			'blog' => $blog,
			'showPagination' => $showPagination,
		]);
	}
}
?>