<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class AddUsers extends CI_Controller {

    public function __construct()
        {
                parent::__construct();
                $this->load->model(['UserModel']);
                $this->load->model(['OuthModel']);
                 
        }

    public function index(){
        $this->load->view('welcome');
    }

    public function create(){
        // $post = $this->input->post();
        // $data = array(
        //     'email' => $this->input->post('email'),
        //     'username' => $this->input->post('username'),
        //     'password' => $this->OuthModel->HashPassword($post['password']),
        //     'name' => $this->input->post('nama'),
        //     'role' => $this->input->post('role'),
		// );

		// $this->UserModel->AddMember($data,'users');
        // $this->index();
        // $this->OuthModel->CSRFVerifyLogin();
		$this->form_validation->set_rules('fullname', 'Name', 'required');
		$this->form_validation->set_rules('email', 'Email', 'required|valid_email|is_unique[users.email]');
 		// $this->form_validation->set_rules('mobile', 'Address', 'required');
		$this->form_validation->set_rules('password', 'password', 'required');
		if ($this->form_validation->run() == FALSE)
        {
 			 $response = ['status' => 0 ,'message' => '<span style="color:#900;">'.validation_errors().'</span>' ];

			 echo json_encode($response);

			 die;

			  

         }else{

			 

				$post = $this->input->post();

						$user_data = [ 	

									'name' => $post['fullname'],

									'username' => $post['username'],

									'password' => $this->OuthModel->HashPassword($post['password']),

									'role' => 'Client_cs',

									'source' => 1,

									'email' => $post['email'],

									// 'mobile_no' => $post['mobile'],

 									'ip_address' => $this->input->ip_address(),

									'created' => date('Y-m-d H:i:s'),

 								];

					$create_member = $this->UserModel->AddMember($this->OuthModel->xss_clean($user_data));

					

					if($create_member == true){

						echo json_encode(['status' => 1 ,'message' => "Your are registerd successfully !"]);

					}else{

						echo json_encode(['status' => 0 ,'message' => "Faild to registerd, Please try again !"]);

					}
				
		}

 		
		 $this->index();
    }
}

?>