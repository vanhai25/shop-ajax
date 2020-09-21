<?php 
class BaseController{
	const VIEW_FOLDER_NAME = 'Views';
	const MODEL_FOLDER_NAME = 'app/Models';

	/** 
	* DESCRIPTION : 
	* 	+ path name: folderName.fileName
	*	+ Lấy từ sau thư mục View
	*/
	protected function view($viewPath, array $data = []){
		foreach($data as $key => $value){
			$$key = $value;
		}
		return require (self::VIEW_FOLDER_NAME. '/' .str_replace('.', '/', $viewPath).'.php');
	}

	protected function loadModel($modelPath){
		return require (self::MODEL_FOLDER_NAME. '/' .$modelPath.'.php');
	}


}
?>