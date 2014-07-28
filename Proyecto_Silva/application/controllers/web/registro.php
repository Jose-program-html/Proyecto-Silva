<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

setlocale(LC_ALL, "es_ES@euro", "es_ES", "esp");

class Registro extends CI_controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper('form');
        $this->load->library('form_validation');
        $this->load->model('login_db');
        $this->load->model('registro_db');
    }

    public function index() {
       return $this->load->view('web/vwRegistro');
    }

    public function index2() {
        $this->load->view('web/vwBienvenida');
    }

    public function registro_() {
        if($this->input->is_ajax_request()){
            $sEmail = $this->input->post('email');
            $sPassword = $this->input->post('password');
            //hashteamos la contraseña
            if (!empty($sPassword)){
                    $sPass = md5($sPassword);
                }
            if (!$this->registro_db->no_existe_cuenta($sEmail)) {
                $data=false;
                $this->output->set_output(json_encode($data));
            } 
            else{
                $this->registro_db->nueva_cuenta($sEmail, $sPass);
                $this->_generar_sesion($sEmail);
                $data=true;
                $this->output->set_output(json_encode($data));
            }
        }
        else{
            $this->load->view('web/vwLayout');
        }
    }

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

    function _cargar_error($sMsjError = '') {
        if (!empty($sMsjError)) {
            $datos['sMsjError'] = $sMsjError;
        }
        // cargamos  la interfaz
        $this->load->view('web/vw', $datos);
    }
}
