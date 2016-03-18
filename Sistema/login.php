<?php
session_start();
include_once "conexion.php";

function verificar_login($user,$password,&$result) {
    $sql = "SELECT * FROM alumno, administrativo, profesor WHERE email= '$user' and contrasena = '$password'";
    $rec = mysql_query($sql);
    $count = 0;

    while($row = mysql_fetch_object($rec))
    {
        $count++;
        $result = $row;
    }

    if($count == 1)
    {
        return 1;
    }

    else
    {
        return 0;
    }
}

if(!isset($_SESSION['userid']))
{
    if(isset($_POST['login']))
    {
        if(verificar_login($_POST['user'],$_POST['password'],$result) == 1)
        {
            $_SESSION['userid'] = $result->email;
			$_SESSION['nombre'] = $result->nombre;
			$_SESSION['permisos'] = $result->permisos;
			$_SESSION['id'] = $result->idAsistente;
            header("location:index.php");
        }
        else
        {
            echo '<div class="error">Su usuario es incorrecto, intente nuevamente.</div>';
        }
    }
?>

<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta content="IE=edge" http-equiv="X-UA-Compatible">
<meta content="width=device-width, initial-scale=1" name="viewport">
<meta content="" name="description">
<meta content="" name="author">
<link href="../../favicon.ico" rel="icon">

<title>Iniciar sesión</title>
<link rel="stylesheet" href="plugin/bootstrap/css/bootstrap.min.css">
</link>
<link rel="stylesheet" href="plugin/bootstrap/css/signin.css">

</link>

</head>
<body>
<div class="container">
<form action="" method="post" class="form-signin">
<h2 class="form-signin-heading">Por favor inicia sesión</h2>
	<label class ="sr-only" for="inputEmail">Correo electrónico</label>
    <input name="user" class="form-control" type="text" autofocus requiered placeholder="Correo electrónico">
	<label class ="sr-only" for="inputPassword">Contraseña</label>
    <input name="password" class="form-control" type="password" requiered placeholder="Contraseña">
	<input name="login" class="btn btn-lg btn-primary btn-block" type="submit" value="Login">
    <button type="button" class="btn btn-link">Restaurar contraseña</button>    
</form>
<?php
} else {
	header("location:index.php");
}
?>
</div>
</body>
</html>
