

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="../Styles/busqueda.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../Scripts/busqueda.js"></script>

</head>

<body onload="getWidth()">
    

   <?php
                $libros=array
                    (
                     "book_1"=>array
                       (
                       "titulo"=>"Cancion de hielo y fuego: Choque de Reyes",
                       "autor"=>"George R. R. Martin"
                       ),
                    );
                
    function Busqueda($array, $string)
    {
       
      $flag = 0;
      $array2=$array;
       foreach($array as $a => $b){

        foreach($b as $c => $d){
          if($d==$string){
              $flag = 1;
                                              echo"<center>
                                                <table>
                                                    <tr>
                                                            <th id=\"titulo\">
                                                                  <button onclick=\"reduce_a()\">-</button>
                                                                  Titulo
                                                                  <button onclick=\"aumenta_a()\">+</button>
                                                                </th>
                                                                <th id=\"autor\">
                                                                  <button onclick=\"reduce_b()\">-</button>
                                                                  Autor
                                                                  <button onclick=\"aumenta_b()\">+</button>
                                                                </th>
                                                    </tr>";      
                                                $auxiliar=$array2[$a];
                                                 echo"<tr>";
                                                 foreach($auxiliar as $d){
                                                    echo"<td><center>{$d}<center></td>";
                                                  
                                                     
                                              


                                                }
                                                echo"<td><a href=\"../libro1.pdf\"
                                                 target=\"_parent\" class=\"button\">Leer</a></td> </tr>";
                                                
                                                
          }
          echo"</table>
                   </center>";
        }
      }
      
      if ($flag == 0) {
          echo "<center><h3>No se han encontrado resultados para la busqueda</h3></center>";
      }
                 
                echo" </body>
                        </html>";
    }
                       

    if($_REQUEST['buscaAutor']){
      
      $autor=$_REQUEST['autor'];
                        
      Busqueda($libros,$autor);
      
    }

    if($_REQUEST['buscaTitulo']){
                        
      $titulo=$_REQUEST['titulo'];
      Busqueda($libros,$titulo);
    }
     ?>


</body>

</html>