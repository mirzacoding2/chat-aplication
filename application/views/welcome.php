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
    <h1> Input Data User</h1>
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
            <?php echo form_open("AddUsers/create");?>
            <form role="form" >
              <div class="box-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Email address</label>
                  <input type="email" class="form-control" name="email">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Username</label>
                  <input type="text" class="form-control" name="username">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Password</label>
                  <input type="password" class="form-control" name="password">
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">Nama</label>
                  <input type="text" class="form-control" name="fullname">
                </div>
                <!-- <div class="form-group">
                    <label>Role</label>
                    <select class="form-control select2" style="width: 100%;" name="role">
                    <option selected="selected">-</option>
                    <option value="Client_cs">Client</option>
                    </select>
                </div> -->
                <!-- <div class="form-group">
                  <label for="exampleInputFile">Foto</label>
                  <input type="file" id="exampleInputFile">
                </div> -->
              
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
              </div>
            </form>
            <?php echo form_close();?>
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