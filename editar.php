<?php 
include("apertura.php"); 
$id = @$_GET["id"]; 
$ssql = "select * from usuarios where id=" . $id; $editar = mysql_query($ssql); 
?> 

<style type="text/css"> 
<center>
*{ 
    font-size: 14px; 
} 
body{ 
background:#aaa; 
} 
form { 
    background: none repeat scroll 0 0 #F1F1F1; 
    border: 1px solid #DDDDDD; 
    font-family: sans-serif; 
    margin: 0 auto; 
    padding: 50px; 
    width: 310px; 
    box-shadow:0px 0px 30px black; 
    border-radius:10px; 
}
</center>
</style>

<form action="campo.php" method="POST"> 
<input type="hidden" name="id" value="<?php echo @$id;?>">
<br /> 
Usuario: 
<br /> 
<input type="text" name="usuario" value="<?php echo @$name = Usuario;?>"> 
<br/><br/> 
Password: 
<br /> 
<input type="text" name="password" value="<?php echo @$password = Password;?>"> 
<br/><br/> 
<input type="submit" value="Editar"> 
<br/><br/> 
<a href="seleccion.php" target="_self">+ Volver</a>
</form> 