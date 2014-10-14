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
            if($_REQUEST['corregir']){
                
                $conn = new PDO("pgsql:dbname=B_08; host=localhost", "alumnodb","alumnodb" );
                
                $sqlCorrector="SELECT id_usuario FROM usuario WHERE login='{$_SESSION['user']}';";
                $stmt=$conn->query($sqlCorrector);
                $obj=$stmt->fetch(PDO::FETCH_OBJ);
                
                $corrector = $obj->id_usuario;
                
                
                
                
                
                
                
                
                $sqlLibros="SELECT * FROM libro WHERE isbn='" . $_REQUEST['isbn'] . "';";      
                $stmt=$conn->query($sqlLibros);
                $obj=$stmt->fetch(PDO::FETCH_OBJ);
            
                $isbn = $obj->isbn;
                $titulo = $obj->titulo;
                
                $sqlPagina = "SELECT f.n_pagina, f.id_fase FROM (SELECT * FROM damePaginasACorregir({$corrector}))
                as f WHERE f.isbn = '{$_REQUEST['isbn']}';";
                $stmt=$conn->query($sqlPagina);
                $obj=$stmt->fetch(PDO::FETCH_OBJ);
                
                $npagina = $obj->n_pagina;
                $fase = $obj->id_fase;
                
                
                
               echo" <tr>
                      <td>
                        <h2>ISBN:</h2>
                      </td>
                      <td>
                        <h2>" . $isbn . "</h2>
                       </td>
                     </tr>
                     <tr>
                      <td>
                        <h2>Titulo:</h2>
                      </td>
                      <td>
                        <h2>" . $titulo . "</h2>
                       </td>
                     </tr>
                     <tr>
                      <td>
                        <h2>Pagina:&nbsp;</h2>
                      </td>
                      <td>
                        <h2>$npagina</h2>
                       </td>
                     </tr>
                     <tr>
                      <td>
                        <h2>Fase:&nbsp;</h2>
                      </td>
                      <td>
                        <h2>$fase</h2>
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
        
      <form  name="texto_pagina"  method="post" action="corregir.php" >
        <p><label>Texto</label></p>
        <textarea cols="80" rows="500" id="correcion" name="correcion" onKeyUp='desbloquear(this);'></textarea>
        <?php
        echo "<input type=\"hidden\" id=\"npagina\" name=\"npagina\" value=\"". $npagina. "\" /> ";
        echo "<input type=\"hidden\" id=\"fase\" name=\"fase\" value=\"" . $fase . "\" />";
        echo "<input type=\"hidden\" id=\"isbn\" name=\"isbn\" value=\"" . $isbn . "\" />";
        echo "<input type=\"hidden\" id=\"corrector\" name=\"corrector\" value=\"" . $corrector . "\" />";
        echo "<input type=\"hidden\" id=\"titulo\" name=\"titulo\" value=\"" . $titulo . "\" />";
        ?>
        <p>
          <input id="terminado" type="submit" value="Enviar Completada" name="terminado" disabled="true" onClick="window.onbeforeunload = noconfirmaSalida;" />
          <input id="corregir" type="submit" value="Enviar Parcialmente Corregida" name="corregir" disabled="true" onClick="window.onbeforeunload = noconfirmaSalida;" />
          <input id="desechar" type="submit" value="Desechar Esta Pagina" name="desechar" onclick="window.onbeforeunload = noconfirmaSalida; return confirmarPagina();" />
          <input id="terminado2" type="submit" value="Enviar Completada y Corregir Nueva" name="terminado2" disabled="true" onclick="window.onbeforeunload = noconfirmaSalida;"/>
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
