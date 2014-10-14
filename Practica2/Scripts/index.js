  var meses = new Array ("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre",        "Diciembre");

  var diasSemana = new Array("Domingo","Lunes","Martes","Miércoles","Jueves","Viernes","Sábado");

  var f=new Date();


  var id,pause=0,position=0;
  function scorrevole() {
    
    var i,k,msg="      " + diasSemana[f.getDay()] + ", " + f.getDate() + " de " + meses[f.getMonth()] + " de " + f.getFullYear()+
    "      Proyectos terminados: 1       Proyectos en curso: 2       ";

    k=(100/msg.length)+1;
    for(i=0;i<=k;i++) msg+=" "+msg;
    document.form2.scorrevole.value=msg.substring(position,position+100);
    if(position++==100) position=0;
    id=setTimeout("scorrevole()",100); 
    
  }


   function desbloquear(form) {
       
      var register=form.register;
       register.removeAttribute('disabled');
       
   }
   
   function bloquear(form) {
       
      var register=form.register;
       register.setAttribute('disabled');
       
   }

  
  function compruebaIdentificacion() {
    if ((document.getElementById('user').value.length == 0) && (document.getElementById('password').value.length == 0)) {
      window.alert("-El nombre de usuario no puede estar vacio\n-La contraseña no puede estar vacia");
    } else if (document.getElementById('user').value.length == 0) {
      window.alert('-El nombre de usuario no puede estar vacio');
    } else if (document.getElementById('password').value.length == 0) {
      window.alert('-La contraseña no puede estar vacia');
    }
  }

  function compruebaRegistro() {
    if (document.getElementById('name').value.length == 0) {
      window.alert("-Debe introducir su nombre");
    } else if (document.getElementById('apellidos').value.length == 0) {
      window.alert('-Debe introducir sus apellidos');
    } else if (document.getElementById('user2').value.length == 0) {
      window.alert('-');
    }
  }
  
  var r={'special':/[\W]/g};
  
    function valid(o,w){
    o.value = o.value.replace(r[w],'');
}
   
   function limitText(limitField, limitNum) {
  if (limitField.value.length > limitNum) {
    limitField.value = limitField.value.substring(0, limitNum);
        }
   }
   
   function checkMail(form) {
    var plant = /[^\w^@^\.^-]+/gi
    var cadena=form.email.value;
    if(cadena!=""){
        if (plant.test(cadena)){
             alert("El email contiene caracteres erróneos");
             return false;
        }
        else{
             plant =/(^\w+)(@{1})([\w\.-]+$)/i
             if (!plant.test(cadena)){
                  alert("Email no valido");
                  return false;
             } 

        }
   }
    return true;
}
   
   function validar_campos(form_registro)
        {             
        var checkOK = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZÁÉÍÓÚ" + "abcdefghijklmnñopqrstuvwxyzáéíóú"
        +"0123456789";
        
        
        if(form_registro.name.value==""){
            alert("Introduzca su nombre");
            form_registro.name.focus();
            return (false);
            
        }
        
        if(form_registro.apellidos.value==""){
            alert("Introduzca sus apellidos");
            form_registro.apellidos.focus();
            return (false);
            
        }
        
        if(form_registro.email.value==""){
            alert("Introduzca su email");
            form_registro.email.focus();
            return (false);
            
        }
        
        if(form_registro.user.value==""){
            alert("Complete el Usuario");
            form_registro.user.focus();
            return (false);
            
        }
            
        
        if (form_registro.password1.value == ""){
            alert("Complete la Contraseña");
            form_registro.password1.focus();
            return (false);
        }
        if (form_registro.password1.value.length < 6){
            alert("La contraseña debe ser mayor de 6 digitos")
            form_registro.password1.focus();
            return (false);
        }

        if (form_registro.password2.value == ""){
            alert("Debe confirmar la contraseña");
            form_registro.password2.focus();
            return (false);
        } 

        if (form_registro.password1.value != form_registro.password2.value){
            alert("La contraseña confirmada no concuerda con la contraseña escrita");
            form_registro.password2.focus();
            return (false);
        }
        
        if ((form_registro.colaborador.checked == false) && (form_registro.colaborador.checked == false)) {
          alert("Debe marca al menos alguna casilla (Corrector o Colaborador)");
          form_registro.colaborador.focus()
          return(false)
        }
        
        if (form_registro.acepto.checked == false) {
          alert("Debe aceptar los terminos y condiciones de uso");
          form_registro.acepto.focus()
          return(false)
        }
        
        return true;
    }
    
  
 
  

    var tooltip=function(){
     var id = 'tt';
     var top = 3;
     var left = 3;
     var maxw = 300;
     var speed = 10;
     var timer = 20;
     var endalpha = 95;
     var alpha = 0;
     var tt,t,c,b,h;
     var ie = document.all ? true : false;
     return{
      show:function(v,w){
       if(tt == null){
        tt = document.createElement('div');
        tt.setAttribute('id',id);
        t = document.createElement('div');
        t.setAttribute('id',id + 'top');
        c = document.createElement('div');
        c.setAttribute('id',id + 'cont');
        b = document.createElement('div');
        b.setAttribute('id',id + 'bot');
        tt.appendChild(t);
        tt.appendChild(c);
        tt.appendChild(b);
        document.body.appendChild(tt);
        tt.style.opacity = 0;
        tt.style.filter = 'alpha(opacity=0)';
        document.onmousemove = this.pos;
       }
       tt.style.display = 'block';
       c.innerHTML = v;
       tt.style.width = w ? w + 'px' : 'auto';
       if(!w && ie){
        t.style.display = 'none';
        b.style.display = 'none';
        tt.style.width = tt.offsetWidth;
        t.style.display = 'block';
        b.style.display = 'block';
       }
      if(tt.offsetWidth > maxw){tt.style.width = maxw + 'px'}
      h = parseInt(tt.offsetHeight) + top;
      clearInterval(tt.timer);
      tt.timer = setInterval(function(){tooltip.fade(1)},timer);
      },
      pos:function(e){
       var u = ie ? event.clientY + document.documentElement.scrollTop : e.pageY;
       var l = ie ? event.clientX + document.documentElement.scrollLeft : e.pageX;
       tt.style.top = (u - h) + 'px';
       tt.style.left = (l + left) + 'px';
      },
      fade:function(d){
       var a = alpha;
       if((a != endalpha && d == 1) || (a != 0 && d == -1)){
        var i = speed;
       if(endalpha - a < speed && d == 1){
        i = endalpha - a;
       }else if(alpha < speed && d == -1){
         i = a;
       }
       alpha = a + (i * d);
       tt.style.opacity = alpha * .01;
       tt.style.filter = 'alpha(opacity=' + alpha + ')';
      }else{
        clearInterval(tt.timer);
         if(d == -1){tt.style.display = 'none'}
      }
     },
     hide:function(){
      clearInterval(tt.timer);
       tt.timer = setInterval(function(){tooltip.fade(-1)},timer);
      }
     };
    }();

function Popup() {
window.open("poup.html","myWindow", "status =no, height = 540, width = 500, resizable=no");
}

    
    var numeros="0123456789";
    var letras="abcdefghyjklmnñopqrstuvwxyz";
    var letras_mayusculas="ABCDEFGHYJKLMNÑOPQRSTUVWXYZ";

    function tiene_numeros(texto){
        
       for(i=0;i<texto.lenght;i++){
          if (numeros.indexOf(texto.charAt(i),0)!=-1){
             return 1;
          }
       }
       return 0;
    } 

    function tiene_letras(texto){
       texto = texto.toLowerCase();
       for(i=0; i<texto.length; i++){
          if (letras.indexOf(texto.charAt(i),0)!=-1){
             return 1;
          }
       }
       return 0;
    } 

    function tiene_minusculas(texto){
       for(i=0; i<texto.length; i++){
          if (letras.indexOf(texto.charAt(i),0)!=-1){
             return 1;
          }
       }
       return 0;
    } 

    function tiene_mayusculas(texto){
       for(i=0; i<texto.length; i++){
          if (letras_mayusculas.indexOf(texto.charAt(i),0)!=-1){
             return 1;
          }
       }
       return 0;
    } 

    function seguridad_clave(clave){
            var seguridad = 0;
            if (clave.length!=0){
                    if (tiene_numeros(clave) && tiene_letras(clave)){
                            seguridad += 30;
                    }
                    if (tiene_minusculas(clave) && tiene_mayusculas(clave)){
                            seguridad += 30;
                    }
                    if (clave.length >= 4 && clave.length <= 5){
                            seguridad += 10;
                    }else{
                            if (clave.length >= 6 && clave.length <= 8){
                                    seguridad += 30;
                            }else{
                                    if (clave.length > 8){
                                            seguridad += 40;
                                    }
                            }
                    }
            }
            return seguridad;        
    }  

    function muestra_seguridad_clave(clave,formulario){
            seguridad=seguridad_clave(clave);
            formulario.seguridad.value=seguridad + "%";
    }
    //-->
