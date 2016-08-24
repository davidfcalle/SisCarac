<?php
	header("Location: /index.html");
	@session_start();
	echo $_SESSION["usuario"];

	if(isset($_SESSION["usuario"])){

  		unset($_SESSION["usuario"]);
  		session_destroy();
  		
  	}

	
?>