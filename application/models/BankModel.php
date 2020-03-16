<?php
    class BankModel extends CI_Model
    {
        function ambil_data(){
            $this->db->order_by('id', 'ASC');
            $query = $this->db->get('chat');
            return $query->result();
        }

        public function download($id){
            $query = $this->db->get_where('chat',array('id'=>$id));
            return $query->row_array();
        }
    }
?>