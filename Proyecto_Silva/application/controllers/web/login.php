<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

setlocale(LC_ALL, "es_ES@euro", "es_ES", "esp");

class Login extends CI_Controller {

    public function __construct() {
        //cargando la librerias del form y el modelo
        parent::__construct();
        $this->load->helper('form');
        $this->load->library('form_validation');
        $this->load->model('login_db');
    }

    public function index() {
        //vefirica si ya hayna sesion abierta o un usuario logeado
        if ($this->input->is_ajax_request()){
            if ($this->session->userdata('sesion_usuario')) {
                return false;
                //modificar para direccion correcta del header
            } else {
            //si no carga la vista del login
                $this->load->view('web/vwLogin');
            }
        }
    }

    public function sesion(){
        if ($this->session->userdata('sesion_usuario')) {
                $this->load->view('web/vwBienvenida');
            }
            else{
                $this->load->view('web/vwLayout');
            }
    }

    public function logout(){
        if($this->input->is_ajax_request()){
            $this->session->unset_userdata('sesion_usuario');
            return true;
        }
    }

    public function validar_form() {
        if($this->input->is_ajax_request()){
            //carga los datos a las variables de email y password
            $sEmail = $this->input->post('email');
            $sPassword = $this->input->post('password');
            $sPass ='';
            if (!empty($sPassword)){
                $sPass = md5($sPassword);
            }
            //limite de tiempo para la sesion
            $SesLimite = 1;
            // nos aseguramos que coincidan email y contraseña
            if ($this->login_db->no_existe_cuenta($sEmail, $sPass, 2)) {
                // cargamos de nuevo la vista, pero pasandole el error producido
                $data=false;
                $this->output->set_output(json_encode($data));
            } else {
                // generamos la sesion
                $this->_generar_sesion($sEmail, $SesLimite);
                $data=true;
                $this->output->set_output(json_encode($data));
            }
        }
        else{
        $this->load->view('web/vwLayout');
      }
    }

    // generamos la sesion con los datos del usuario
    function _generar_sesion($sEmail = '[desconocido]', $SesLimite = 1) {
        // armamos un array con los datos de la sesion
        $arrSesion = array(
            'is_logged' => true,
            'email' => $sEmail,
            'seslimite' => time() + ($SesLimite * 60)// limite en minutos
        );
        // se establece la sesion
        $this->session->set_userdata('sesion_usuario', $arrSesion);
    }

}
