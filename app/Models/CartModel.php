<?php 
class CartModel extends DBConnect{
	
	function getLocal(){
		$sql = "SELECT *
				FROM table_district

		";
		return $this->getMoreRows($sql);
	}
	function getProvince(){
		$sql = "SELECT *
				FROM table_province
		";
		return $this->getMoreRows($sql);
	}
	function getDistrict($aid){
		$sql = "SELECT *
				FROM table_district
				WHERE id_province = $aid
		";
		return $this->getMoreRows($sql);
	}

	function setCustomer($name,$tel,$mail,$address){
		$sql = "INSERT INTO table_customer(name,tel,mail,address)
				VALUES('$name','$tel','$mail','$address')

		";
		$check = $this->executeQuery($sql);
		if($check){
			return $this->getIdInsert();
		}
		return false;
	}

	function setBill($id_customer,$total_price,$ship_price,$note){
		$sql = "INSERT INTO table_bill(id_customer,total_price,ship_price,note)
				VALUES($id_customer,'$total_price','$ship_price','note')
		";
		$check = $this->executeQuery($sql);
		if($check){
			return $this->getIdInsert();
		}
		return false;
	}

	function setBillDetail($id_product,$id_bill,$quantity,$option){
		$sql = "INSERT INTO table_bill_detail(id_product,id_bill,quantity,option_product)
				VALUES($id_product,$id_bill,'$quantity','$option')

		";
		return $this->executeQuery($sql);
	}
}
?>