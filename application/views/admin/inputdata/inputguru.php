<!DOCTYPE html>
<html>
<head>
    <?php $this->load->view('admin/layouts/header'); ?>
</head>



<body class="fixed-left">

    <!-- Begin page -->
    <div id="wrapper">

        <!-- Top Bar Start -->
        <?php $this->load->view('admin/layouts/top_menu');?>
        <!-- Top Bar End -->


        <!-- ========== Left Sidebar Start ========== -->

        <?php $this->load->view('admin/layouts/sidebar');?>
        <!-- Left Sidebar End --> 



        <!-- ============================================================== -->
        <!-- Start right Content here -->
        <!-- ============================================================== -->                      
        <div class="content-page">
            <!-- Start content -->
            <div class="content">
                <div class="container">

                    <!-- Page-Title -->
                    <div class="row">
                        <div class="col-sm-offset-2 col-sm-8">
                            <div class="panel panel-default">

                                <?php 
                                $berhasil = $this->session->flashdata('berhasil');

                                if(!empty($berhasil))
                                    { ?>

                                <div class="alert alert-warning alert-dismissable">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                    <?= $this->session->flashdata('berhasil'); ?>
                                </div>

                                <?php }

                                ?>

                                <?php if(!empty($error)){echo $error;} ?>


                                <div class="panel-heading"><h3 class="panel-title">Input Data Guru</h3></div>
                                <div class="panel-body">
                                    <form action="<?php echo site_url('admin/inputdata/storeguru');?>" method="POST" class="form-horizontal" role="form" enctype="multipart/form-data">                                    
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">NIP</label>
                                            <div class="col-md-10">
                                                <input type="text" name="nip" class="form-control" value="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label" for="example-email">Nama Guru</label>
                                            <div class="col-md-10">
                                                <input type="text" name="nama" id="example-email" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label" for="example-email">TTL</label>
                                            <div class="col-md-5">
                                                <input type="text" name="ttl1" id="example-email" class="form-control" placeholder="Tempat">
                                            </div>
                                            <div class="col-md-5">
                                                <input type="text" name="ttl2" id="ddtt" class="form-control" placeholder="Tanggal Lahir">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label" for="example-email">Jabatan</label>
                                            <div class="col-md-10">
                                                <input type="text" name="jabatan" class="form-control" placeholder="Jabatan">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label" for="example-email">Jenis Kelamain</label>
                                            <div class="col-md-10">
                                                <input type="radio" name="jk" id="optionsRadios2" value="L"> L
                                                <input type="radio" style="margin-left: 100px" name="jk" id="optionsRadios2" value="L"> P
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label" for="example-email">No. Handphone</label>
                                            <div class="col-md-10">
                                                <input type="number" name="nope" class="form-control" placeholder="Nomor Handphone">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Alamat</label>
                                            <div class="col-md-10">
                                                <textarea name="alamat" class="form-control" rows="5"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-2 control-label">Upload Photo</label>
                                            <div class="col-md-10">
                                                <input type="file" name="userfile" />
                                            </div>
                                        </div>
                                        <div class="form-group m-b-0">
                                            <div class="col-sm-offset-2 col-sm-9">
                                              <button type="submit" class="btn btn-info waves-effect waves-light">Tambah</button>
                                          </div>
                                      </div>
                                  </form>
                              </div> <!-- panel-body -->
                          </div> <!-- panel -->
                      </div> <!-- col -->
                  </div> <!-- End row -->
                  <!-- end row -->

              </div> <!-- container -->

          </div> <!-- content -->

          <footer class="footer text-right">
            2015 © Moltran.
        </footer>

    </div>
    <!-- ============================================================== -->
    <!-- End Right content here -->
    <!-- ============================================================== -->


    <!-- Right Sidebar -->

    <!-- /Right-bar -->

</div>
<!-- END wrapper -->



<?php $this->load->view('admin/layouts/footer'); ?>

</body>
</html>