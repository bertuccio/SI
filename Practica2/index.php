<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Proyecto Guttemberg</title>
<link href="Styles/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="Scripts/index.js"></script>
   
</head>

<body onload="scorrevole()">
<?php

                function creaSesion($user){
                  
                 
                        session_start ();
                        $_SESSION['user']=$user;
                        

                }
                
                function creaCookie($user,$pass){
                    
                      
                      
                        setcookie('Usuario',$user,time() + 86400);
                        setcookie('Password',$pass,time() + 86400);
         
                }
                
                
    
    if($_REQUEST['entrar']){
                    $usuario= $_REQUEST['user'];
                    $password= $_REQUEST['password'];
                    $userNoRegistrado=false;
                    $userRepetido=false;
                    $contraseñaVacia=false;
                    $usuarioVacio=false;

                    if(empty($_REQUEST['user']))
                        $usuarioVacio=true;
                    else if(empty($_REQUEST['password']))
                        $contraseñaVacia=true;
                    else{
                        
                        if($usuario=="cor_htm"||$usuario=="cor_php"||$usuario=="col_php"||$usuario=="col_htm"){
                        
                            if($_REQUEST['recordar']){
                                 creaCookie($usuario,$password);
                            }
                            else{
                                 setcookie('Usuario',$usuario,time());
                                 setcookie('Password',$password,time());
                            }
                            creaSesion($usuario);
                        }


                       

                       switch ($usuario) {
                            case "cor_htm":
                                header('Location: ./HTML/corrector/inicio.html');
                                break;
                            case "cor_php":
                                header('Location: ./PHP/corrector/inicio.php');
                                break;
                             case "col_php":
                                header('Location: ./PHP/colaborador/inicio.php');
                                break;
                              case "col_htm":
                                header('Location: ./HTML/colaborador/inicio.html');
                                break;
                            default: 
                                $userNoRegistrado=true;
                                break;
                        }
                    }
                }
                
                else if($_REQUEST['register']){
                    $usuario=$_REQUEST['user'];
                    if($usuario=="cor_htm"||$usuario=="cor_php"||$usuario=="col_php"){ 
                        $userRepetido=true;
                        
                    }
                    
                    
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
                if(($_REQUEST['entrar'])and($userNoRegistrado==true))
                    echo("<tr><td><img src=\"Images/icon-error.png\">&nbsp;<span style=color:red;'>Usuario o contraseña incorrectos</span></td></tr>");
                
                else if(($_REQUEST['entrar'])and($usuarioVacio==true))
                    echo("<tr><td><img src=\"Images/icon-error.png\">&nbsp;<span style=color:red;'>Usuario incorrecto</span></td></tr>");
                else if(($_REQUEST['entrar'])and($contraseñaVacia==true))
                    echo("<tr><td><img src=\"Images/icon-error.png\">&nbsp;<span style=color:red;'>Contraseña incorrecta</span></td></tr>");
                
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
      
       <form name=form2><p><input type="text" style="border:none;" name="scorrevole" size="40"></p></form>
       
    </div>
    <div id="registro">
      <table>
        <form name="form_registro" action="index.php" method="post">
          <tr>
            <td colspan="2">Nombre:</td>
          </tr>
          <tr>
            <td colspan="2">
              <input type="text" id="name" name="name" size="35" maxlenght="15" />
            </td>
          </tr>   
          <tr>
            <td colspan="2">Apellidos:<td>
          </tr>
          <tr>
            <td colspan="2">
          <input type="text" id="apellidos" name="apellidos" size="35" maxlenght="15" />
            <td>
          </tr>
           <tr>
            <td colspan="2">E-Mail:</td>
          </tr>
          <tr>
            <td colspan="2">
          <input type="text" id="email" name="email" size="35" maxlenght="40" />
            </td>
          </tr>
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
                if(($_REQUEST['register'])and($userRepetido==true))
                    echo("<tr><td><img src=\"Images/icon-error.png\">&nbsp;<span style=color:red;'>El usuario ya existe</span></td></tr>");
                ?>
            
                
             
          
          <tr>
            <td colspan="2">Contrase&ntilde;a:</td>
          </tr>
          <tr>
            <td colspan="2">
          
          <input type="text" size="35" name="password1" maxlenght="15" onkeyup="limitText(this.form.password1,15);muestra_seguridad_clave(this.value, this.form);" onKeyDown="limitText(this.form.password1,15);" > 
            <br /><i>seguridad:&nbsp;</i><input name="seguridad" type="text" style="border: 0px; color:green; font-weight: bold;" onfocus="blur()">
            </td>
          </tr>
            <tr>
            <td colspan="2">Confirmar Contrase&ntilde;a:</td>
          </tr>
          <tr>
            <td colspan="2">
          
          <input type="text" size="35" onkeyup="limitText(this.form.password2,15);" onKeyDown="limitText(this.form.password2,15);" name="password2" maxlenght="15"></td>
            
          </tr>
         
          <tr height="80">
            <td width="130">
              <p><input type="checkbox" id="colaborador" name="tipo[]" checked value="colaborador"/>Colaborador</p>
            </td>
            <td>
              <p><input type="checkbox" id="corrector" name="tipo[]" value="corrector"/>Corrector</p>
            <td>
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
            <td>
          </tr>
          
          <tr height="100">
                <td>
              <input type="button" class="button"  onClick="Popup();" onmouseover="tooltip.show( ' <strong>Haz click para ver las normas de registro</strong>');" onmouseout="tooltip.hide();" value="Normas">
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
