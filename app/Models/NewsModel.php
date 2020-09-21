<?php 
class NewsModel extends DBConnect{

	public function getNewsDetail($title,$id){
		$sql = "SELECT *
				FROM table_news 
				WHERE id = $id 
				AND title_no = '$title'
		";
		return $this->getOneRow($sql);
	}
}
?>