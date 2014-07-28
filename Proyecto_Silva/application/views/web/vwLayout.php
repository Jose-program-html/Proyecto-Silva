<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <title>layout</title>
        <!-- Ejemplo font de google -->
        <link href='http://fonts.googleapis.com/css?family=Gilda+Display' rel='stylesheet' type='text/css'>
        <!-- Estilos -->
        <link rel="stylesheet" href="<?php echo base_url() . FOUND; ?>css/foundation.css" />
        <link rel="stylesheet" href="<?php echo base_url() . FOUND; ?>css/foundation.min.css" />
        <script type="text/javascript" src="<?php echo base_url() . FOUND; ?>js/vendor/modernizr.js"></script>
        <link rel="stylesheet" href="<?php echo base_url() . CSS; ?>web/home.css" />
    </head>
    <body>
        <center><div id="primer_div">
            <a data-reveal-id="myModal" onclick="ajaxloadjoin()"><img src="<?php echo base_url() . IMG; ?>web/Registrate.png" width="220px"></a>
        </div>
        <div id="myModal" class="reveal-modal tiny" data-reveal>
            <a class="close-reveal-modal" onclick="cerrar()" id="boton_cerrar_modal">&#215;</a>
            <div id="logincarga"></div>
            <center><a onclick="ajaxloadlogin()"id="boton-login">Iniciar Sesion</a></center>
        </div>
    </center>
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url() . FOUND; ?>js/foundation.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url() . FOUND; ?>js/foundation/foundation.reveal.js"></script>
        <!-- Funcionalidad JS de la pagina -->
        <script type="text/javascript" src="<?php echo base_url() . JS; ?>web/home.js"></script>
        <script type="text/javascript" src="<?php echo base_url() . JS; ?>web/load-login.js"></script>
    </div>
</body>
</html>
