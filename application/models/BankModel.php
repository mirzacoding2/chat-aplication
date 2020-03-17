<?php
    class BankModel extends CI_Model
    {
        function ambil_data(){
            $this->db->order_by('attachment_name', 'desc');
            $where = "attachment_name is  NOT NULL AND attachment_name !='' ";
            $query = $this->db->get_where('chat', $where);
            return $query->result();
        }

        public function download($id){
            $query = $this->db->get_where('chat',array('id'=>$id));
            return $query->row_array();
        }
    }
?>