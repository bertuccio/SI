  
		  

	function confirmaSalida()   {    

				 return "¿Desea salir de la página?";
	}
	
	function noconfirmaSalida()   {    
	}
		  
  function confirmarPagina(){  
      if(confirm("AVISO: ¿Desea desechar la página?"))  
          return true;
      
      return false;
       
    }  
    
 function confirmarSalida(){  
        if(confirm("AVISO: ¿Desea salir de Corregir Página?")) {
            return true;
        }
       return false;
    }  

    
    
    function desbloquear(field){
      
      var completado1 = document.getElementById('terminado');
      var completado2 = document.getElementById('terminado2');
      var parcial = document.getElementById('corregir');
      
      if(field.value!=""){
         
          completado1.removeAttribute('disabled');
          completado2.removeAttribute('disabled');
          parcial.removeAttribute('disabled');
					window.onbeforeunload = confirmaSalida;
          return true;
      }
      
      completado1.disabled = 'disabled';
      completado2.disabled = 'disabled';
      parcial.disabled = 'disabled';
      return false;
  }