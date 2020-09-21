<?php 
class NewsController extends BaseController{
	private $newsModel;
	public function __construct(){
		$this->loadModel('NewsModel');
		$this->newsModel = new NewsModel;
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

		$news = $this->newsModel->getNewsDetail($tt,$id);

		$title = 'Trang tin tức';
		require url('Views.fontend.head');
		require url('Views.fontend.header');
		return $this->view('fontend.news.index',[
			'news' => $news,
		]);
	}
}
?>