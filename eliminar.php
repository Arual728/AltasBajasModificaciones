<?php 
include("conexion.php"); 
$conectar=mysql_connect($host, $usuario, $password);
mysql_select_db($db_blog,$conectar);
$usuario = $_POST['usuario'];
mysql_query("SELECT ID FROM usuarios WHRE usuario = '$usuario'",$conectar);
if(mysql_query)
{
mysql_query("DELETE FROM usuarios WHERE usuario='$usuario'",$conectar);
echo "se han eliminado los datos";
}else{
echo "problema al eliminar datos";
}
?> 