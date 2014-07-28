function ajaxlogin(){
  $.ajax({
    type: "POST",
    url: '/Proyecto_Silva/web/login/validar_form',
    dataType: "json",
    data: "email="+$("#username").val()+"&password="+$("#password").val(),                      
    success: function(data){
        if(data==false){
            $("#error_1").show("fast");
        }else{
           document.location='http://localhost//Proyecto_Silva/admin/dashboard';
        }
    }
  });
}

function ajaxjoin(){
  $.ajax({
    type: "POST",
    url: '/Proyecto_Silva/web/registro/registro_',
    dataType: "json",
    data: "email="+$("#username").val()+"&password="+$("#password").val(),
    success: function(data){
        if(data==false){
            $("#error_1").show("fast");
        }
        else{
          document.location='http://localhost//Proyecto_Silva/web/bienvenida/index';
        }
    }
  });
}    