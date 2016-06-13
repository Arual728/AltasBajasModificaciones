<?php  include("apertura.php"); 
$ssql = "select id, usuario from usuarios"; 
$db_blog = mysql_query($ssql); 
while($fila = mysql_fetch_array($db_blog)) { 
echo'<a href="editar.php?id=' . $fila['id'] . '">Editar</a> '; 
echo $fila["usuario"] . "<br />";}  
?>
<style type="text/css"> 
<center>
*{ 
    font-size: 14px; 
} 
body{ 
background:#aaa; 
} 
while,echo { 
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