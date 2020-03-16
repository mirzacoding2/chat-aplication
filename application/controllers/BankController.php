<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
    class BankController extends CI_Controller {

        function __construct(){
            parent::__construct();
            $this->load->helper(array('form', 'url'));
            $this->load->model('BankModel', '', TRUE);
        }

        public function index(){
            if ($query = $this->BankModel->ambil_data()){
                $data['rowrecord'] = $query;
            }
            $this->load->view('data', $data);
        }

        

        
    }

?>