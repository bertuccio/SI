<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Proyecto Guttemberg - Corregir pagina</title>
<link href="../../Styles/corregir_pagina.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../Scripts/corregir_pagina.js"></script>
<script type="text/javascript" src="../../Scripts/inicio.js">
</script>
</head>

    
    <?php
        session_start();
        
        setcookie("ultimaTarea", "corregir_pagina.php", time() + 86400);

        function guardaFicheroTemporal($datos){
            
          
            if(@$fp = fopen("temp_{$_SESSION['user']}.txt", "w+")){
              fwrite($fp, stripslashes($datos));
              fclose($fp);
            } else {
              echo ("<h1>Error</h1>\n<p>No se puede escribir el archivo, asegurate que los permisos son correctos(CHMOD 777).</p>");
            }
            
        }
        
        function guardaFicheroCompleto($datos){
            
            
             if(@$fp = fopen("completo_{$_SESSION['user']}.txt", "w+")){
                  fwrite($fp, stripslashes($datos));
                  fclose($fp);
            } else {
                  echo ("<h1>Error</h1>\n<p>No se puede escribir el archivo, asegurate que los permisos son correctos(CHMOD 777).</p>");
                }
            
        }
        
     
        
        if(isset($_REQUEST["completa1"])||isset($_REQUEST["completa2"])){
            
            guardaFicheroCompleto($_REQUEST['correcion']);
        }
        
        if(isset($_REQUEST["completa1"])){
            header('Location: corregir.php');
        }
            
        if(isset($_REQUEST["parcial"])){
            guardaFicheroTemporal($_REQUEST['correcion']);
        }
        
       
        if(isset($_REQUEST["completa2"])||isset($_REQUEST["desechar"])){
            if($_SESSION['titulo']!="Cancion de hielo y fuego: Juego de Tronos")
                $_SESSION['titulo']="Cancion de hielo y fuego: Juego de Tronos";
            else
                $_SESSION['titulo']="";
        }
        
    ?>
            
         
            
            
           
<body onload="scorrevole()">
     
  <div id="cuerpo">
    <div id="cabecera">
            <img src="../../Images/logo.png" width="798" height="100" />
        </div>
    <div id="msuperior">
      <a href="inicio.php">Inicio</a>
      <a href="buscar.php">Buscar Libro</a>
      <a href="corregir.php">Corregir Pagina</a>
      <a href="../../index.php">Desconexi&oacute;n</a>
       
    </div>
      <center> 
        <form name="form2"><p><input type="text" style="border:none;" name="scorrevole" size="80" /></p></form>
    </center>
    <div id="referencia">
      <center>
      <table>
            <?php
            if($_SESSION['titulo']=="Cancion de hielo y fuego: Juego de Tronos"){
               echo" <tr>
                      <td>
                        <h2>Titulo:</h2>
                      </td>
                      <td>
                        <h2>Cancion de Hielo y Fuego: Juego de Tronos</h2>
                       </td>
                     </tr>
                     <tr>
                      <td>
                        <h2>Autor:</h2>
                      </td>
                      <td>
                        <h2>Martin, George R. R.</h2>
                       </td>
                     </tr>
                     <tr>
                      <td>
                        <h2>Pagina:&nbsp;</h2>
                      </td>
                      <td>
                        <h2>6</h2>
                       </td>
                     </tr>";
            }
            else{
                echo"<tr>
                      <td>
                        <h2>Titulo:</h2>
                      </td>
                      <td>
                        <h2>El Se&ntilde;or de los Anillos: Las dos torres</h2>
                       </td>
                     </tr>
                     <tr>
                      <td>
                        <h2>Autor:</h2>
                      </td>
                      <td>
                        <h2>J.R.R. Tolkien</h2>
                       </td>
                     </tr>
                     <tr>
                      <td>
                        <h2>Pagina:&nbsp;</h2>
                      </td>
                      <td>
                        <h2>3</h2>
                       </td>
                     </tr>";
                
            }
        
        ?>
       </table> 
       </center>    
    </div>       
    <div id="imagen">
    <center>
        <?php
        
        if($_SESSION['titulo']=="Cancion de hielo y fuego: Juego de Tronos"){
          echo"  <img width=\"750px\" height=\"950px\" border=\"1px\" src=\"../../Images/pagina2.png\"/>";
            
        }
        else
       echo"  <img width=\"750px\" height=\"950px\" border=\"1px\" src=\"../../Images/pagina1.png\"/>";
        ?>
        </center>
    </div>
   
    <div id="texto">
    <center>
        
      <form  name="texto_pagina"  method="post" action="corregir_pagina.php" >
        <p><label>Texto</label></p>
        <textarea cols="80" rows="500" id="correcion" name="correcion" onKeyUp='desbloquear(this);'></textarea>
        <p>
          <input id="terminado" type="submit" value="Enviar Completada" name="completa1" disabled="true" onClick="window.onbeforeunload = noconfirmaSalida;" />
          <input id="corregir" type="submit" value="Enviar Parcialmente Corregida" name="parcial" disabled="true" onClick="window.onbeforeunload = noconfirmaSalida;" />
          <input id="desechar" type="submit" value="Desechar Esta Pagina" name="desechar" onclick="window.onbeforeunload = noconfirmaSalida; return confirmarPagina();" />
          <input id="terminado2" type="submit" value="Enviar Completada y Corregir Nueva" name="completa2" disabled="true" onclick="window.onbeforeunload = noconfirmaSalida;" />
         
        </p>        
      </form>
    </center>
    </div>
    <div id="pie">
      <hr width="100%" color="#DDDDDD" size="1px" noshade="noshade" style="border-color:#CCC" />
      <p>
        <a href="mailto:christian.ramos@estudiante.uam.es">Contacta con nosotros</a> &nbsp;|&nbsp; 
        <a href="../../condiciones.html">Condiciones de uso</a> &nbsp;|&nbsp; 
        <a href="../../info.html">¿Qui&eacute;nes somos?</a> 
      </p>
      <p style="font-size:16px; color:#000;">©2011 Proyecto Gutenberg</p>
    </div>
  </div>
</body>
</html>
