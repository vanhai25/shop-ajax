<?php 
class ProductModel extends DBConnect{
	function getPriceSelect($idProduct){
		$sql = "SELECT price
				FROM table_size_product
				WHERE id_product = $idProduct
		";
		return $this->getMoreRows($sql);
	}

	// lấy sản phẩm chi tiết
	function getProductDetail($id,$title){
		$sql = "SELECT *
				FROM table_product
				WHERE id = $id 
				AND title_no = '$title'
		";
		return $this->getOneRow($sql);
	}
	// lấy các option sản phẩm
	function getOptionColorProduct($id){
		$sql = "SELECT tc.*
				FROM table_color_product tcp 
				INNER JOIN table_color tc ON tc.id = tcp.id_color 
				WHERE tcp.id_product = $id 
		";
		return $this->getMoreRows($sql);
	}
	// lấy các option sản phẩm
	function getOptionSizeProduct($id){
		$sql = "SELECT ts.* , tsp.price
				FROM table_size_product tsp 
				INNER JOIN table_size ts ON ts.id = tsp.id_size 
				WHERE tsp.id_product = $id 
		";
		return $this->getMoreRows($sql);
	}

}
?>