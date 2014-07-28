function logout(){
  $.ajax({
    type: "POST",
    url: '/bodas/web/login/logout',
    dataType: "json",
    success: function(data){
    	if(data==true){
    		document.location='http://localhost//Proyecto_Silva/';
    	}
    }
  });
}    