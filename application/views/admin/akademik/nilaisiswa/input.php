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
                        <div class="col-sm-12">
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


                                <div class="panel-heading"><h3 class="panel-title">Input Nilai Siswa</h3></div>
                                <div class="panel-body">
                                    <form id="basic-form" action="<?= site_url('admin/akademik/storenilai');?>" method="POST">
                                        <div>
                                            <h3>Step 1</h3>
                                            <section>
                                                <div class="form-group clearfix">
                                                    <label class="col-lg-2 control-label " for="userName">Kelas *</label>
                                                    <div class="col-lg-10">
                                                        <select name="kelas" class="form-control required">
                                                            <option disabled selected>Pilih Kelas</option>
                                                            <?php foreach($kelas as $ks) : ?>
                                                                <option value="<?= $ks->id;?>"><?= $ks->nama_ruangan;?></option>
                                                            <?php endforeach;?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group clearfix">
                                                    <label class="col-lg-2 control-label " for="password"> Semester *</label>
                                                    <div class="col-lg-10">
                                                        <select name="semester" class="form-control required">
                                                            <option disabled selected>Semester</option>
                                                            <option value="Ganjil">Ganjil</option>
                                                            <option value="Genap">Genap</option>
                                                        </select>

                                                    </div>
                                                </div>

                                                <div class="form-group clearfix">
                                                    <label class="col-lg-2 control-label " for="confirm">Tahun Ajaran *</label>
                                                    <div class="col-lg-10">
                                                        <select name="thn_ajaran" class="form-control required">
                                                            <option disabled selected>Tahun Ajaran</option>
                                                            <?php for($i=2009;$i<=2100;$i++){$a = $i+1; echo "<option>$i-$a</option>";}?>
                                                        </select>
                                                    </div>
                                                </div>
                                            </section>
                                            <h3>Step 2</h3>
                                            <section>
                                                <div class="form-group clearfix">

                                                    <label class="col-lg-2 control-label" for="name"> Nama Siswa </label>
                                                    <div class="col-lg-10">
                                                        <select name="nik_siswa" class="form-control required">
                                                            <option disabled selected>Nama Siswa</option>
                                                            <?php foreach($siswa as $sw) : ?>
                                                                <option value="<?= $sw->nik;?>"><?= $sw->nama;?></option>
                                                            <?php endforeach;?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group clearfix">
                                                    <label class="col-lg-2 control-label " for="surname"> Mata Pelajaran </label>
                                                    <div class="col-lg-10">
                                                        <select name="kode_mapel" class="form-control required">
                                                            <option disabled selected>Mata Pelajaran</option>
                                                            <?php foreach($mapel as $sw) : ?>
                                                                <option value="<?= $sw->kode_mapel;?>"><?= $sw->nama_mapel;?></option>
                                                            <?php endforeach;?>
                                                        </select>

                                                    </div>
                                                </div>

                                                <div class="form-group clearfix">
                                                    <label class="col-lg-2 control-label " for="email">Nilai *</label>
                                                    <div class="col-lg-3">
                                                        <input type="number" class="form-control" name="afektif" placeholder="Tugas">
                                                    </div>
                                                    <div class="col-lg-3">
                                                        <input type="number" class="form-control" name="komulatif" placeholder="UTS">
                                                    </div>
                                                    <div class="col-lg-3">
                                                        <input type="number" class="form-control" name="psikomotorik" placeholder="UAS">
                                                    </div>
                                                </div>

                                            </section>
                                        </div>
                                        <button type="submit" value="tes">Tes</button>
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