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

<form action="validar_usuario.php" method="post">
 <table>
 <center>
 <h1>inicio de secion</h1></center>
  <tr>
   <td>Usuario:</td>
   <td><input name="admin" required="required" type="text" /></td>
  </tr>
  <tr>
   <td>Password:</td>
   <td><input name="password_usuario" required="required" type="password" /></td> 
  </tr>
   <td colspan="2"><input name="iniciar" type="submit" value="Iniciar Sesi�n" /></td>
   <td><a href="seleccion.php">+Modificar</a></td>
   <tr>
   <td><td><td><a href="campo2.php">+Eliminar</a></td></td></td>
  </tr>
</table>

</form>

<?php 
session_start();//crea una sesi�n para ser usada mediante una petici�n GET o POST, o pasado por una cookie y la sentencia include_once es la usaremos para incluir el archivo de conexi�n a la base de datos que creamos anteriormente.
include_once "conexion.php"; 
?>

<form action="" method="post" class="registro"> 
<table>
<center>
 <h1>Registro de cuenta</h1></center>
  <tr>
   <td>Usuario:</td>
   <td><input type="text" name="usuario"></td> 
</tr>
  <tr>
   <td>Password:</td>
   <td><input type="password" name="password"></td> 
</tr>
  <tr>
   <td>Repetir Password:</td>
   <td><input type="password" name="repassword"></td> </tr>
   <td><input type="submit" name="enviar" value="Registrar"></td>
   
</table>
</form> 

 
<?php 
if(isset($_POST['enviar'])) 
{ 
    if($_POST['usuario'] == '' or $_POST['password'] == '' or $_POST['repassword'] == '')
    { 
        echo 'Por favor llene todos los campos.'; 
    } 
    else 
    { 
        $sql = 'SELECT * FROM usuarios'; 
        $rec = mysql_query($sql); 
        $verificar_usuario = 0; 
  
        while($result = mysql_fetch_object($rec)) 
        { 
            if($result->usuario == $_POST['usuario']) 
            { 
                $verificar_usuario = 1; 
            } 
        } 
  
        if($verificar_usuario == 0) 
        { 
            if($_POST['password'] == $_POST['repassword']) 
            { 
                $usuario = $_POST['usuario']; 
                $password = $_POST['password']; 
                $sql = "INSERT INTO usuarios (usuario,password) VALUES ('$usuario','$password')";
                mysql_query($sql); 
  
                echo 'Usted se ha registrado correctamente.'; 
            } 
            else 
            { 
                echo 'Las claves no son iguales, intente nuevamente.'; 
            } 
        } 
        else 
        { 
            echo 'Este usuario ya ha sido registrado anteriormente.'; 
        } 
    } 
} 
?>