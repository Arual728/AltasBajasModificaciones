<?php include("apertura.php"); 
$id= @$_POST['id']; 
$usuario = @$_POST['usuario']; 
$password = @$_POST['password']; 
$sql = "UPDATE `usuarios` SET `id`='$id',`usuario`='$usuario',`password`='$password' WHERE `id`='$id'";
if (mysql_query($sql)) { 
echo "Actualización exitosa "; 
} else { 
echo "Error de actualizacion "; 
} 
echo 'id ' . $_POST['id'] . ', ' . $_POST['usuario'] . ', ' . $_POST['password']. '<br /><br />'; 
mysql_close($conexion);
?> 
<a href="login.php" target="_self">Volver</a>