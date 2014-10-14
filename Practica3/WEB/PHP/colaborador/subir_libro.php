<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Proyecto Guttemberg - Subir libro</title>
<link href="../../Styles/subir_libro.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../Scripts/inicio.js"></script>
</head>

<body onload="scorrevole()">
    <?php  
    
        if($_REQUEST['Subir']){
            
            $titulo=true;
            $autor=true;
            $lenguaje=true;
            $fecha=true;
            
            if(empty ($_REQUEST['titulo'])){
                $titulo=false;
            }
             if(empty ($_REQUEST['autor'])){
                $autor=false;
            }
             if(empty ($_REQUEST['lenguaje'])){
                $lenguaje=false;
            }
             if(empty ($_REQUEST['fecha'])){
                $fecha=false;
            }
            
            if($titulo&&$autor&&$lenguaje&&$fecha){

                        session_start ();
                        $_SESSION['titulo']=$_REQUEST['titulo'];
                        $_SESSION['autor']=$_REQUEST['autor'];
                        $_SESSION['lenguaje']=$_REQUEST['lenguaje'];
                        $_SESSION['fecha']=$_REQUEST['fecha'];
                
                        header('Location: subir_pagina.php');
            }
            
        }
    
    
    
    
    ?>
  <div id="cuerpo" onload="scorrevole()">
    <div id="cabecera">
      <img src="../../Images/logo.png" width="798" height="100" />
    </div>
    <div id="msuperior">
      
          <a href="inicio.php">Inicio</a>
          <a href="buscar.php">Buscar Libro</a>
          <a href="subir.php">Subir Contenido</a>
          <a href="../../index.php">Desconexi&oacute;n</a>
       
    </div>
    <center> 
        <form name="form2"><p><input type="text" style="border:none;" name="scorrevole" size="80" /></p></form>
    </center>
    <div id="formularios">
    <center>
      <form name="subir_pagina" method="post" action="subir_libro.php">
      <table>
        <tr>
          <td valign="botton"><label for="nombre">Título: </label></td>
          <td><input id="nombre" type="text" maxlength="29" size="50" name="titulo" /></td>
        </tr>
           <?php  if(($_REQUEST['Subir'])and($titulo==false)){
                   echo"<tr><td></td>";
                   echo("<td>&nbsp;&nbsp;<img src=\"../../Images/icon-error.png\">&nbsp;<span style=color:red;'>Titulo vacío</span></td></tr>");
                 }
           ?>
           <tr>        
          <td valign="botton"><label for="autor">Autor: </label></td>
          <td><input id="autor" type="text" maxlength="29" size="50" name="autor" /></td>
        </tr>
          <?php  if(($_REQUEST['Subir'])and($autor==false)){
                  
                   echo"<tr><td></td>";
                   echo("<td>&nbsp;&nbsp;<img src=\"../../Images/icon-error.png\">&nbsp;<span style=color:red;'>Autor vacío</span></td></tr>");
                    }
          ?>
        <tr>
          <td valign="botton"><label for="npagina">Lenguaje: </label></td>
          <td><input type="text" name="lenguaje" id="lenguaje" maxlength="20" size="25" /></td>
        </tr>
          <?php  if(($_REQUEST['Subir'])and($lenguaje==false)){
                  
                   echo"<tr><td></td>";
                   echo("<td>&nbsp;&nbsp;<img src=\"../../Images/icon-error.png\">&nbsp;<span style=color:red;'>Lenguaje vacío</span></td></tr>");
                     }
           ?>
        <tr>
          <td valign="botton"><label for="npagina">Fecha de publicaci&oacute;n: </label></td>
          <td><input type="text" name="fecha" id="fecha" maxlength="20" size="25"/></td>
        </tr>
          <?php  if(($_REQUEST['Subir'])and($fecha==false)){
                  
                   echo"<tr><td></td>";
                   echo("<td>&nbsp;&nbsp;<img src=\"../../Images/icon-error.png\">&nbsp;<span style=color:red;'>Fecha vacía</span></td></tr>");
                }
           ?>
        <tr>
          <td colspan="2" align="center" valign="botton" height="60"><input class="button" id="subir" type="submit" name="Subir" value="Subir" /></td>
        </tr>
      </table>      
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
