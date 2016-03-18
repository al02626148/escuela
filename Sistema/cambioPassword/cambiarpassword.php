<?php 

$password1 = $_POST['password1'];
$password2 = $_POST['password2'];
$idusuario = $_POST['idusuario'];
$token = $_POST['token'];

if( $password1 != "" && $password2 != "" && $idusuario != "" && $token != "" ){
?>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta name="author" content="denker">
    <title> Restablecer contraseña </title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
  </head>

  <body>
    <div class="container" role="main">
      <div class="col-md-2"></div>
      <div class="col-md-8">
<?php

	
	$conexion = new mysqli('localhost', 'root', 'root', 'escuelapos');
	$sql = " SELECT * FROM tblreseteopass WHERE token = '$token' ";

	$resultado = $conexion->query($sql);
	if( $resultado->num_rows > 0 ){
		$usuario = $resultado->fetch_assoc();
		if( sha1( $usuario['idusuario'] === $idusuario ) ){
			if( $password1 === $password2 ){
				$sql = "UPDATE users SET password = '".sha1($password1)."' WHERE id = ".$usuario['idusuario'];
				$resultado = $conexion->query($sql);
				if($resultado){
					$sql = "DELETE FROM tblreseteopass WHERE token = '$token';";
					$resultado = $conexion->query( $sql );
				?>
					<p> La contraseña se actualizó con exito. </p>
				<?php
				}
				else{
				?>
					<p> Ocurrió un error al actualizar la contraseña, intentalo más tarde </p>
				<?php
				}
			}
			else{
			?>
			<p> Las contraseñas no coinciden </p>
			<?php
			}

		}
		else{
?>
<p> El token no es válido </p>
<?php
		}	
	}
	else{
?>
<p> El token no es válido </p>
<?php
	}
	?>
	</div>
<div class="col-md-2"></div>
	</div> <!-- /container -->
<script src="js/jquery-1.11.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
<?php
}
else{
	header('Location:login.php');
}
?>