<?php 
class HomeModel extends DBConnect{
	function getNewProduct(){
		$sql = "SELECT *
				FROM table_product
				ORDER BY id DESC 
				LIMIT 0,8
		";
		return $this->getMoreRows($sql);
	}
	function getPriceSelect($idProduct){
		$sql = "SELECT price
				FROM table_size_product
				WHERE id_product = $idProduct
		";
		return $this->getMoreRows($sql);
	}
	function getHotProduct(){
		$sql = "SELECT *
				FROM table_product
				WHERE hot = 1
				LIMIT 0,8
		";
		return $this->getMoreRows($sql);
	}
	function getNews(){
		$sql = "SELECT * 
				FROM table_news
				ORDER BY id DESC
				LIMIT 0,3

		";
		return $this->getMoreRows($sql);
	}
}
?>