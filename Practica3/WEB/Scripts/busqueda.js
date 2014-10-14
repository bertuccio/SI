function reduce_a() {
  
  document.getElementById('titulo').width = document.getElementById('titulo').width - 20;
  
}

function aumenta_a() {
  
  document.getElementById('titulo').width = parseInt(document.getElementById('titulo').width) + 20;
  
}

function reduce_b() {
  
  document.getElementById('autor').width = document.getElementById('autor').width - 20;
  
}

function aumenta_b() {

  document.getElementById('autor').width = parseInt(document.getElementById('autor').width) + 20;
  
}

function getWidth() {

  document.getElementById('autor').width = parseInt(document.getElementById('autor').offsetWidth);
  document.getElementById('titulo').width = parseInt(document.getElementById('titulo').offsetWidth);
  
}