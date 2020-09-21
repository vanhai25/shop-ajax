<?php 
if(isset($_REQUEST["controller"])){
	$controllerName = ucfirst((strtolower($_REQUEST["controller"]))."Controller");
}
else{
	$controllerName = "homeController";
}

$actionName = $_REQUEST["action"] ?? "index";
if(isset($_REQUEST['action'])){
	$actionName = $_REQUEST['action'];
}
else{
	$actionName ='index';
}
require_once "app/Controllers/${controllerName}.php";

$controllerObject = new $controllerName;

$controllerObject->$actionName();
?>