<?php 
class BlogModel extends DBConnect{
	function getBlog($position = -1, $quantity = -1){
		$sql = "SELECT * 
				FROM table_news
				ORDER BY id DESC

		";
		
		if($position != -1 && $quantity != -1){
			$sql .="LIMIT $position,$quantity";
		}
		return $this->getMoreRows($sql);
	}
}
?>