<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Proyecto Guttemberg</title>
<link href="Styles/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="Scripts/index.js"></script>
</head>

<body onLoad="scorrevole();">
<?php

    
    
                function creaSesion($user){
                  
                 
                        session_start ();
                        $_SESSION['user']=$user;
                        

                }
                
                function creaCookie($user,$pass){
                    
                      
                      
                        setcookie('Usuario',$user,time() + 86400);
                        setcookie('Password',$pass,time() + 86400);
         
    
                }
                
                function existeUsuario($conn, $user) {
                    
                    $query ="SELECT * FROM usuario WHERE login= :loginUsuario";
                    $stmt = $conn->prepare($query);
                    $stmt->bindParam(':loginUsuario', $user, PDO::PARAM_STR);
                    $stmt->execute();
                    $result = $stmt->fetchAll();
                    if (!$result)
                        return 0;
                    else
                        return 1;
                    
                }
                
                function existeCorreo($conn, $email) {
                    
                    $query = "SELECT * FROM usuario WHERE email = :emailUsuario";
                    $stmt = $conn->prepare($query);
                    $stmt->bindParam(':emailUsuario', $email, PDO::PARAM_STR);
                    $stmt->execute();
                    $result = $stmt->fetchAll();
                    if (!$result)
                        return 0;
                    else
                        return 1;
                    
                }
                
                
                

    
    
    $conn = new PDO("pgsql:dbname=B_08; host=localhost", "alumnodb","alumnodb" ); 
    
   /*Proyectos Acabadados*/
   $sqlProyAcab = "SELECT COUNT(*) FROM proyecto WHERE id_fase='FI';";

   $stmt=$conn->query($sqlProyAcab);
   while ($row=$stmt->fetch(PDO::FETCH_NUM)){
           $numProyectosAcabados = $row[0];
   }

   /*Proyectos Totales*/
   $sqlProyTotales= "SELECT COUNT(*) FROM proyecto;";

   $stmt=$conn->query($sqlProyTotales);
   while ($row=$stmt->fetch(PDO::FETCH_NUM)){
           $numProyectosTotales = $row[0];
   }
    
   echo '<script languaje="javascript">
       
        var proyectosAcabados = $numProyectosAcabados;
        var proyectosTotales = $numProyectosTotales;
        
        scorrevole();

    </script>';
    
    if($_REQUEST['entrar']){
        
        $userNoRegistrado=false;
        $contraseñaVacia=false;
        $usuarioVacio=false;
        $passwordIncorrecta=false;
        $escolaborador = false;
        $escorrector = false;
        $esadmin = false;
    
        $usuario= $_REQUEST['user'];
        $password= $_REQUEST['password'];


        if(empty($_REQUEST['user']))
            $usuarioVacio=true;
        else if(empty($_REQUEST['password']))
            $contraseñaVacia=true;
        else{

            $query ="SELECT * FROM usuario WHERE login= :loginUsuario";
            $stmt = $conn->prepare($query);
            $stmt->bindParam(':loginUsuario', $usuario, PDO::PARAM_STR);
            $stmt->execute();
            $result = $stmt->fetch();
            if (!$result) {
                $userNoRegistrado = true;
                $query ="INSERT INTO log (message) VALUES('Usuario intentando acceder con login: " . $usuario . 
                         " , password: " . $password . "');";
                $conn->exec($query);
            }
            else {


                if ($result[2] == $password) {

                    if ($result[9] == true) {
                        $escorrector = true;                                
                    }

                    if ($result[10] == true) {
                        $escolaborador = true;                                
                    }

                    if ($result[12] == true) {
                        $esadmin = true;                                
                    }

                    if ($escorrector == true) {
                        $conn = null;
                        header('Location: ./PHP/corrector/inicio.php');
                    }

                    if ($escolaborador == true) {
                        $conn = null;
                        header('Location: ./PHP/colaborador/inicio.php');
                    }
                } else {

                    $passwordIncorrecta = true;
                    $query ="INSERT INTO log (message) VALUES('Usuario intentando acceder con login: " . $usuario . 
                         " , password: " . $password . "');";
                    $conn->exec($query);
                }

            } 

            if($_REQUEST['recordar']){
                 creaCookie($usuario,$password);
            }
            else{
                 setcookie('Usuario',$usuario,time());
                 setcookie('Password',$password,time());
            }
            creaSesion($usuario);
            
        }
                    
    }
                
    else if($_REQUEST['register']){
        
        $userRepetido=false;
        $emailRepetido=false;
        $escorrector='false';
        $escolaborador='false';
        
        $usuario=$_REQUEST['user'];
        $password=$_REQUEST['password1'];
        $email = $_REQUEST['email'];

        if($_REQUEST['corrector']){
            $escorrector='true';
        }
        
        if($_REQUEST['colaborador']){
            $escolaborador='true';
        }


        if (existeUsuario($conn, $usuario) == 0) {
            if (existeCorreo($conn, $email) == 0) {
                $query = "INSERT INTO usuario (login, password, nivel, n_paginaspf,
                    n_paginassf, n_paginastf, escoordinador, escorrector, escolaborador, email,
                    essysadmin) VALUES ('" . $usuario . "', '" . $password . "', 'F0', 0, 0, 0, 
                    false, " . $escorrector . ", " . $escolaborador . ", '" . $email ."', false)";
                $conn->exec($query);
            }
            else 
                
                $emailRepetido = true;
        }
        else
            
            $userRepetido = true;
        
    }
    else{


        session_start ();
        //Eliminamos un par clave/valor
        unset($_SESSION['user']);

        //Eliminamos todas las variables de sesión
        $_SESSION = array();
        session_destroy();
    }
                    
               
                
  ?>
  <div id="cuerpo">
    <div id="cabecera">
      <img src="Images/logo.png" width="798" height="100" />
    </div>
    <div id="contenido">
    <div id="identificacion">
      <table>
        <form name="form_identificacion" action="index.php" method="post"> 
          <tr>
            <td>Usuario:</td>
          </tr>
           <?php
            
                if(isset($_COOKIE['Usuario'])){
                    $user=$_COOKIE['Usuario'];
                    $password=$_COOKIE['Password'];
                   echo"<td>
                            <input type=\"text\" name=\"user\" size=\"35\" value=\"{$user}\" maxlength=\"30\"/>
                           </td>
                         <tr>
                        <td>Contrase&ntilde;a:</td>
                      </tr>
                      <tr>
                        <td>
                          <input type=\"password\" name=\"password\" size=\"35\" value=\"{$password}\" maxlength=\"30\"/></td>

                      </tr>";
                            
                }
                else{
                    echo"<td>
                            <input type=\"text\" name=\"user\" size=\"35\"  maxlength=\"30\"/>
                           </td>
                         <tr>
                            <td>Contrase&ntilde;a:</td>
                          </tr>
                          <tr>
                            <td>
                              <input type=\"password\" name=\"password\" size=\"35\"  maxlength=\"30\"/></td>

                          </tr>";
                }
            ?>    

            <?php
               
                
                if($_REQUEST['entrar']) {
                    if (($usuarioVacio==true) or ($userNoRegistrado == true))
                        echo("<tr><td><img src=\"Images/icon-error.png\">&nbsp;<span style=color:red;'>Usuario incorrecto</span></td></tr>");
                    else if(($contraseñaVacia==true)or($passwordIncorrecta==true))
                        echo("<tr><td><img src=\"Images/icon-error.png\">&nbsp;<span style=color:red;'>Contraseña incorrecta</span></td></tr>");
                }
           ?>
         
            
           
            
            <tr>
              
                
             <?php
            
                if(isset($_COOKIE['Usuario'])){
                   
                   echo"<td>
                             <p><input type=\"checkbox\" id=\"recordar\" name=\"recordar\" value=\"recordar\" checked/>Recordar</p>
                        </td>";
                }
                else{
                    echo"<td>
                             <p><input type=\"checkbox\" id=\"recordar\" name=\"recordar\" value=\"recordar\" />Recordar</p>
                        </td>";
                }
                 
            ?>  
          </tr> 
          <tr valign="bottom">
            <td colspan="2" height="30" align="center" valign="bottom">
              <input class="button" type="submit" name="entrar" value="Entrar" onclick="compruebaIdentificacion()"/>
            </td>
          </tr>
          </form>
      </table>
      
      <form name="form2"><p><input type="text" style="border:none;" name="scorrevole" size="40" /></p></form>
       
    </div>
    <div id="registro">
      <table>
        <form name="form_registro" action="index.php" method="post">
           
          <tr>
            <td colspan="2">Usuario:</td>
          </tr>
           <tr height="80">
                <td colspan="2">
                 <input type="text" id="user" onkeyup="valid(this,'special');" onblur="valid(this,'special');" 
                        name="user" size="35" maxlenght="30" />

            </td>
           </tr>
          
          <?php
          
            if (($_REQUEST['register']) and ($userRepetido == true))
                echo("<tr><td><img src=\"Images/icon-error.png\">&nbsp;<span style=color:red;'>El usuario ya existe</span></td></tr>");
            
          ?>
            
          <tr>
            <td colspan="2">Contrase&ntilde;a:</td>
          </tr>
          <tr>
            <td colspan="2">
          
          <input type="text" size="35" name="password1" maxlenght="15" onkeyup="limitText(this.form.password1,15);muestra_seguridad_clave(this.value, this.form);" onKeyDown="limitText(this.form.password1,15);" /> 
            <br /><i>seguridad:&nbsp;</i><input name="seguridad" type="text" style="border: 0px; color:green; font-weight: bold;" onfocus="blur()" />
           </td>
          </tr>
            <tr>
            <td colspan="2">Confirmar Contrase&ntilde;a:</td>
          </tr>
          <tr>
            <td colspan="2">
          
          <input type="text" size="35" onkeyup="limitText(this.form.password2,15);" onKeyDown="limitText(this.form.password2,15);" name="password2" maxlenght="15"/></td>
            
          </tr>
          <tr>
            <td colspan="2">E-Mail:</td>
          </tr>
          <tr>
            <td colspan="2">
          <input type="text" id="email" name="email" size="35" maxlenght="40" />
            </td>
          </tr>
            
          <?php
                if (($_REQUEST['register']) and ($emailRepetido == true))
                    echo("<tr><td colspan = \"2\"><img src=\"Images/icon-error.png\">&nbsp;<span style=color:red;'>El e-mail no esta disponible</span></td></tr>");
          ?>
            
          <tr height="80">
            <td width="130">
              <p><input type="checkbox" id="colaborador" name="colaborador" checked="true" value="colaborador"/>Colaborador</p>
            </td>
            <td>
              <p><input type="checkbox" id="corrector" name="corrector" value="corrector"/>Corrector</p>
            </td>
             <td>
            </td>
          </tr>
          
          <tr height="80">
            <td colspan="3">
              <input type="radio" id="acepto" name="condiciones[]" value="acepto" onClick="desbloquear(form_registro);"/>
              Acepto los <a href="condiciones.html">t&eacute;rminos y condiciones de uso</a>
            </td>
          </tr>
          <tr height="50">
            <td width="320" colspan="3">
              <input type="radio" id="no_acepto" name="condiciones[]" value="noacepto" onClick="bloquear(form_registro);" checked="checked"/>
              No acepto los t&eacute;rminos y condiciones de uso
            </td>
          </tr>
          
          <tr height="100">
                <td>
              <input type="button" class="button"  onClick="Popup();" onmouseover="tooltip.show('<strong>Haz click para ver las normas de registro</strong>');" onmouseout="tooltip.hide();" value="Normas" />
                  </td>
           <td>
             <p><input class="button" id="register" type="submit" onclick="validar_campos(form_registro); checkMail(form_registro);" name="register" value="Registrarse" disabled="true"/></p>
            </td>
              
          </tr>
        </form>
      </table>
    </div>
    </div>
    <div id="pie">
      <hr width="100%" color="#DDDDDD" size="1px" noshade="noshade" style="border-color:#CCC" />
      <p>
        <a href="mailto:christian.ramos@estudiante.uam.es">Contacta con nosotros</a> &nbsp;|&nbsp; 
        <a href="condiciones.html">Condiciones de uso</a> &nbsp;|&nbsp; 
        <a href="info.html">¿Qui&eacute;nes somos?</a> 
      </p>
      <p style="font-size:16px; color:#000;">©2011 Proyecto Gutenberg</p>
    </div>
  </div>
</body>
</html>
