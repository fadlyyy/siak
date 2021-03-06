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


                                <div class="panel-heading"><h3 class="panel-title">Input Jadwal</h3></div>
                                <div class="panel-body">
                                    <form action="<?php echo site_url('admin/akademik/storejadwal');?>" method="POST" class="form-horizontal" role="form">                                    
                            <div class="form-group">
                                <label class="col-md-2 control-label">Kelas</label>
                                <div class="col-md-10">
                                    <select name="id_kelas" class="form-control" required="">
                                        <option></option>
                                        <?php foreach($kelas as $ks) : ?>
                                            <option value="<?= $ks->id;?>"><?= $ks->nama_ruangan;?></option>
                                        <?php endforeach;?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-2 control-label" for="example-email">Mata Pelajaran</label>
                                <div class="col-md-10">
                                    <select name="kode_mapel" class="form-control" required="">
                                        <option></option>
                                        <?php foreach($mapel as $ks) : ?>
                                            <option value="<?= $ks->kode_mapel;?>"><?= $ks->nama_mapel;?></option>
                                        <?php endforeach;?>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2 control-label" for="example-email">Hari</label>
                                <div class="col-md-10">
                                    <select name="hari" class="form-control" required="">
                                        <option></option>
                                        <option value="senin">Senin</option>
                                        <option value="selasa">selasa</option>
                                        <option value="rabu">rabu</option>
                                        <option value="kamis">kamis</option>
                                        <option value="jumat">jumat</option>
                                        <option value="sabtu">sabtu</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2 control-label" for="example-email">Jam Pelajaran</label>
                                <div class="col-md-2">
                                    <select name="jam_awal" class="form-control" required="">

                                        <?php
                                        for($i=7; $i<=17;$i++)
                                        {
                                            if($i <= 9){$i = "0$i";}
                                            echo "<option>$i</option>";
                                        }
                                        ?>

                                    </select>
                                </div>
                                <div class="col-md-2">
                                    <select name="menit_awal" class="form-control" required="">

                                        <?php
                                        for($i=0; $i<=59;$i++)
                                        {
                                            if($i <= 9){$i = "0$i";}
                                            echo "<option>$i</option>";
                                        }
                                        ?>

                                    </select>
                                </div>
                                <div class="col-md-2">
                                    <p style="margin-top: 7px; text-align: center;">s/d</p>
                                </div>
                                <div class="col-md-2">
                                    <select name="jam_akhir" class="form-control" required="">

                                        <?php
                                        for($i=7; $i<=17;$i++)
                                        {
                                            if($i <= 9){$i = "0$i";}
                                            echo "<option>$i</option>";
                                        }
                                        ?>

                                    </select>
                                </div>
                                <div class="col-md-2">
                                    <select name="menit_akhir" class="form-control" required="">

                                        <?php
                                        for($i=0; $i<=59;$i++)
                                        {
                                            if($i <= 9){$i = "0$i";}
                                            echo "<option>$i</option>";
                                        }
                                        ?>

                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2 control-label" for="example-email">Guru</label>
                                <div class="col-md-10">
                                    <select name="nip" class="form-control" required="">
                                        <option></option>
                                        <?php foreach($guru as $gr) : ?>
                                            <option value="<?= $gr->NIP;?>"><?= $gr->nama;?></option>
                                        <?php endforeach;?>
                                    </select>
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