<!DOCTYPE html>
<html>
<head>
    <?php $this->load->view('admin/layouts/header'); ?>
    <style>
        form{
            margin: 25px;
            display: none;
        }
    </style>
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


                                <div class="panel-heading"><h3 class="panel-title">Cari Jadwal</h3></div>
                                <div class="panel-body">

                                    <button id="carikelas" type="button" class="btn btn-block btn-purple btn-custom waves-effect waves-light m-b-5">Cari Berdasarkan Kelas</button>

                                    <form action="<?= site_url('admin/akademik/carijadwalkelas');?>" method="POST" id="formkelas" class="form-horizontal" role="form">
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Kelas</label>
                                            <div class="col-sm-7">
                                                <select name="kelas" class="form-control">
                                                    <option></option>
                                                    <?php foreach($kelas as $ks) : ?>
                                                        <option value="<?= $ks->id;?>"><?= $ks->nama_ruangan;?></option>
                                                    <?php endforeach;?>
                                                </select>
                                            </div>
                                            <div class="col-sm-3">
                                                <button type="submit" class="btn btn-info waves-effect waves-light">Cari</button>
                                            </div>
                                        </div>
                                    </form>

                                    <button id="cariguru" type="button" class="btn btn-block btn-pink btn-custom waves-effect waves-light m-b-5">Cari Berdasarkan Guru</button>

                                    <form action="<?= site_url('admin/akademik/carijadwalguru');?>" method="POST" id="formguru" class="form-horizontal" role="form">
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Guru</label>
                                            <div class="col-sm-7">
                                                <input type="text" name="guru" class="form-control" placeholder="Masukkan Nama Guru">
                                            </div>
                                            <div class="col-sm-3">
                                                <button type="submit" class="btn btn-info waves-effect waves-light">Cari</button>
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

    <script>
        $(document).ready(function(){
            $('#carikelas').click(function(){
                $('#formkelas').slideToggle('slow');
                $('#formguru').slideUp('slow');
            });

            $('#cariguru').click(function(){
                $('#formguru').slideToggle('slow');
                $('#formkelas').slideUp('slow');
            });
        });
    </script>

</body>
</html>