<?php 
class CategoryModel extends DBConnect{
	
	public function getCategory($url = 'Tat-ca',$position = -1, $quantity = -1){
		$sql = "SELECT p.*, c.name, c.name_no
				FROM table_product_catalog pc
				INNER JOIN table_catalog c ON c.id = pc.id_catalog
				INNER JOIN table_product p ON p.id = pc.id_product
				
		";
		if($url != 'Tat-ca'){
			$sql .="WHERE c.name_no = '$url'";
		}
		if($position != -1 && $quantity != -1){
			$sql .="LIMIT $position,$quantity";
		}
		return $this->getMoreRows($sql);
	}

	public function getAll($table){
		$sql = "SELECT *
				FROM $table 
				ORDER BY id DESC

		";
		return $this->getMoreRows($sql);
	}
}
?>