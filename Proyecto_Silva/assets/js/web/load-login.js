function ajaxloadjoin(){
    $('#myModal').foundation('reveal', 'open');
	$.ajax({
        type : "POST",
        url :  "/Proyecto_Silva/web/registro/index", 
        success : function(data){
        	$("#logincarga").html(data);
        } 
    });
}
function cerrar(){
	$('#myModal').foundation('reveal', 'close');
}
function ajaxloadlogin(){
    $.ajax({
        type : "POST",
        url :  "/Proyecto_Silva/web/login/index", 
        success : function(data){
            if(data==false){
                document.location='http://localhost//Proyecto_Silva/web/login/sesion';
            }else{
                $("#logincarga").html(data);
                $("#boton-login").hide();
            }
        } 
    });
}