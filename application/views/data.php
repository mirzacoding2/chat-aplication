<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<?php $this->load->view('include/header');?>

<!-- DataTables -->
<link rel="stylesheet" href="<?=base_url('public');?>/components/datatables.net-bs/css/dataTables.bootstrap.min.css">
<style>
.imgcls {
	height: 70px;
	width: 80px;
}
</style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
<?php $this->load->view('include/topbar');?>

<!-- Left side column. contains the logo and sidebar -->

<?php $this->load->view('include/sidebar');?>

<!-- Content Wrapper. Contains page content -->

<div class="content-wrapper"> 
  
  <!-- Content Header (Page header) -->
  
  <section class="content-header">
    <h1>File Data</h1>
    <ol class="breadcrumb">
      <li><a href="<?=base_url('dashboard');?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
      <li class="active">
        <?=$this->uri->segment(2).'/'.$this->uri->segment(3);?>
      </li>
    </ol>
  </section>
  
  <!-- Main content -->
  
  <section class="content">
    <div class="row">
      
          <!-- /.box-header -->
          
          <div class="box box-primary">
            
            <!-- /.box-header -->
            <!-- form start -->
            <div class="box">
            
            <div class="box-header">
              <!-- <h3 class="box-title">Data Table With Full Features</h3> -->
            </div>

            <!-- /.box-header -->
            <div class="box-body">
              
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <!-- <th>ID</th> -->
                  <th>No</th>
                  <th>File</th>
                  <th>Option</th>
                </tr>
                </thead>
                <tbody>
                <?php
                $no = '1';
                    if (isset($rowrecord)){
                        foreach($rowrecord as $row){?>
                            
                            <tr>
                                <td><?php echo $no++ ?></td>
                                <td><?php echo $row->attachment_name ?></td>
                                <td><a href="<?php echo base_url().'BankController/get_download/'.$row->id; ?>">Download</a></td>
                            </tr>
                      <?php
                        }
                    }
                    else{ 
                        echo"no returned data";
                    }
                    ?>
                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
          </div>
    </div> 
          <!-- /.box-body --> 
          
      
    
    <!-- /.row --> 
    
  </section>
  
  <!-- /.content --> 
  
</div>

<!-- /.content-wrapper -->

<?php $this->load->view('include/footer');?>

</body>
</html>