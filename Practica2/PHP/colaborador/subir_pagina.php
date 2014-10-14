<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Proyecto Guttemberg - Inicio</title>
<link href="../../Styles/subir_pagina.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../Scripts/inicio.js"></script>
</head>

<body onload="scorrevole()">
    <?php  session_start();
    $campos=true;
    $extensionImagenvalida=true;
    $extensionTextovalido=true;
    $tamanoTextoinvalido=false;
    $tamanoImageninvalido=false;
    
    if($_REQUEST['Subir']){
        
        $imagen=$_FILES["imagen"]["name"];
        $texto=$_FILES["texto"]["name"];
        $npagina=$_REQUEST['npagina'];
        if($imagen!=""&&$texto!=""&&$npagina>0){
            
           
            
            $extensionTexto=substr(strrchr($texto, "."),1);
            $extensionImagen=substr(strrchr($imagen, "."),1);
            if((!($extensionImagen=="jpeg"||$extensionImagen=="jpg"||$extensionImagen=="png")||$extensionTexto!="txt")){
                if(!($extensionImagen=="jpeg"||$extensionImagen=="jpg"||$extensionImagen=="png"))
                    $extensionImagenvalida=false;          
                if($extensionTexto!="txt")
                    $extensionTextovalido=false;
               
            }
            else{
                  
                $tamanoImagen= $_FILES["imagen"]["size"];
                $tamanoTexto= $_FILES["texto"]["size"];
              
                //100 Kb
                if($tamanoTexto>100000||$tamanoImagen>100000){
                    if($tamanoTexto>100000){
                        $tamanoTextoinvalido=true;
                    }
                     if($tamanoImagen>100000){
                        $tamanoImageninvalido=true;
                    }   
                    
                }
                else{
                    $ruta_destino=realpath("../../../");

                    $archivoImagen= $ruta_destino ."/". trim($_SESSION['titulo']) .
                    "_Imagen_" . "pag" . $npagina. "." . $extensionImagen;
                     $archivoTexto=$ruta_destino ."/". trim( $_SESSION['titulo']) .
                    "_Texto_" . "pag" . $npagina. "." .$extensionTexto;
                 
                    copy($_FILES['imagen']['tmp_name'], $archivoImagen);
                    copy($_FILES['texto']['tmp_name'], $archivoTexto);
                }
                
            }
           
        }
        else
            $campos=false;
        
    }
    
    
    ?>
  <div id="cuerpo">
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
    <div id="referencia">
      <center>
      <table>
        <tr>
          <td>
            <h2>Titulo:</h2>
          </td>
          <td>
            <h2><?php echo "{$_SESSION['titulo']}" ?></h2>
           </td>
         </tr>
         <tr>
           <td>
            <h2>Autor:</h2>
          </td>
          <td>
            <h2><?php echo "{$_SESSION['autor']}" ?></h2>
           </td>
         </tr>
       </table>
       </center>
    </div>
    <div id="formularios">
    <center>
        
      <form name="subir_pagina" method="post" action="#" enctype="multipart/form-data">
        <p>
        <label for="titulo">Imagen: </label>
          
          <input name="imagen" type="file" id="examinar_imagen" value="imagen"></input>
          </p>
          <?php if($extensionImagenvalida==false) echo"<td>&nbsp;&nbsp;<img src=\"../../Images/icon-error.png\">&nbsp;<span style=color:red;'>Extensiones válidas de imagen
              : jpg, jpeg y png</span></td></tr>";    ?>
            <?php if($tamanoImageninvalido==true) echo"<td>&nbsp;&nbsp;<img src=\"../../Images/icon-error.png\">&nbsp;<span style=color:red;'>
                 Tamano máximo 100 Kb</span></td></tr>";    ?>
          <p>        
          <label for="autor">Texto:&nbsp;</label>
         
          <input  name="texto" type="file" id="examinar_texto" value="texto" ></input>
          </p>
            <?php if($extensionTextovalido==false) echo"<td>&nbsp;&nbsp;<img src=\"../../Images/icon-error.png\">&nbsp;<span style=color:red;'>Extensiones válidas de texto
              : txt</span></td></tr>";    ?>
             <?php if($tamanoTextoinvalido==true) echo"<td>&nbsp;&nbsp;<img src=\"../../Images/icon-error.png\">&nbsp;<span style=color:red;'>
                 Tamano máximo 100 Kb</span></td></tr>";    ?>
          <p>
          <label for="npagina">Numero de p&aacute;gina: </label>
          <input type="text" name="npagina" id="npagina" maxlength="5" size="8"/>
          </p>
          <p><input class="button" id="subir" type="submit" value="Subir" name="Subir" /></p>       
        </form>
        <?php if($campos==false) echo"<td>&nbsp;&nbsp;<img src=\"../../Images/icon-error.png\">&nbsp;<span style=color:red;'>Es necesario poner correctamente todos los campos</span></td></tr>";    ?>
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
