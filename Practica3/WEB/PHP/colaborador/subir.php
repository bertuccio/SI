<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Proyecto Guttemberg - Subir contenido</title>
<link href="../../Styles/subir.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../Scripts/inicio.js"></script>
</head>

<body onload="scorrevole()">
    <?php  session_start();?>
  <div id="cuerpo">
    <div id="cabecera">
      <img src="../../Images/logo.png" width="798" height="100" />
    </div>
    <div id="msuperior">
      
          <a href="inicio.php">Inicio</a>
          <a href="buscar.php">Buscar Libro</a>
          <a>Subir Contenido</a>
          <a href="../../index.php">Desconexi&oacute;n</a>
       
    </div>
    <center> 
        <form name="form2"><p><input type="text" style="border:none;" name="scorrevole" size="80" /></p></form>
    </center>
    <div id="formularios">
    <center>
      <form name="busqueda_titulo" method="post" action="busquedasubir.php" target="iframe">
          <label for="titulo">Titulo: </label>
            <input id="titulo" type="text" value="Buscar..." maxlength="100" size="50" style="color:#999"  name="titulo" 
            autocomplete="off" onfocus="this.value = ''; this.style.color='#000'" />
            <input id="btitulo" type="submit" value="Buscar" name="buscaTitulo" />        
        </form>
      <form name="busqueda_autor" method="post" action="busquedasubir.php" target="iframe">
          <label for="autor">Autor: </label>
            <input id="autor" type="text" value="Buscar..." maxlength="100" size="50" style="color:#999" name="autor" 
            autocomplete="off" onfocus="this.value = ''; this.style.color='#000'" />
            <input id="bautor" type="submit" value="Buscar" name="buscaAutor" />        
        </form>      
      
    </center>
    </div>
    <div id="b_nuevo">
      <center><a href="subir_libro.php">Nuevo Libro</a></center>
    </div>
    <div id="busqueda">
        <center>
        <iframe name="iframe" id="iframe" width="800px" height="260px" src="busquedasubir.php">
        
        </iframe>
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