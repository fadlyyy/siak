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

                                <div class="alert alert-success alert-dismissable">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                    <?= $this->session->flashdata('berhasil'); ?>
                                </div>

                                <?php }

                                ?>


                                <div class="panel-heading"><h3 class="panel-title">Data Guru</h3></div>
                                <div class="panel-body">
                                    <!-- Isi COntent ====================== -->

                                    <table class="datatables table table-bordered table-striped" id="datatable-editable">
                                        <thead>
                                            <tr>
                                                <th>Hari</th>
                                                <th>Mata Pelajaran</th>
                                                <th>Jam Pelajaran</th>
                                                <th>Guru Pengajar</th>
                                                <th>Actions</th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php foreach($senin as $sw) : ?>
                                                <tr class="gradeX">
                                                    <td><?= $sw->hari; ?>
                                                    </td>
                                                    <td><?= $sw->nama_mapel; ?></td>
                                                    <td><?= $sw->jam_awal;?>:<?= $sw->menit_awal;?> - <?= $sw->jam_akhir;?>:<?= $sw->menit_akhir;?></td>
                                                    <td><?= $sw->nama; ?></td>
                                                    <td class="actions">
                                                        <a href="<?=site_url('admin/akademik/editjadwal/'.$sw->id);?>">Edit</a>
                                                        <a href="<?=site_url('admin/akademik/destroyjadwal/'.$sw->id);?>" class="pull-right">Delete</a>
                                                    </td>
                                                </tr>
                                            <?php endforeach; ?>

                                            <?php foreach($selasa as $sw) : ?>
                                                <tr class="gradeX">
                                                    <td><?= $sw->hari; ?>
                                                    </td>
                                                    <td><?= $sw->nama_mapel; ?></td>
                                                    <td><?= $sw->jam_awal;?>:<?= $sw->menit_awal;?> - <?= $sw->jam_akhir;?>:<?= $sw->menit_akhir;?></td>
                                                    <td><?= $sw->nama; ?></td>
                                                    <td class="actions">
                                                        <a href="">Edit</a>
                                                        <a href="<?=site_url('admin/akademik/destroyjadwal/'.$sw->id);?>" class="pull-right">Delete</a>
                                                    </td>
                                                </tr>
                                            <?php endforeach; ?>

                                            <?php foreach($rabu as $sw) : ?>
                                                <tr class="gradeX">
                                                    <td><?= $sw->hari; ?>
                                                    </td>
                                                    <td><?= $sw->nama_mapel; ?></td>
                                                    <td><?= $sw->jam_awal;?>:<?= $sw->menit_awal;?> - <?= $sw->jam_akhir;?>:<?= $sw->menit_akhir;?></td>
                                                    <td><?= $sw->nama; ?></td>
                                                    <td class="actions">
                                                        <a href="">Edit</a>
                                                        <a href="<?=site_url('admin/akademik/destroyjadwal/'.$sw->id);?>" class="pull-right">Delete</a>
                                                    </td>
                                                </tr>
                                            <?php endforeach; ?>

                                            <?php foreach($kamis as $sw) : ?>
                                                <tr class="gradeX">
                                                    <td><?= $sw->hari; ?>
                                                    </td>
                                                    <td><?= $sw->nama_mapel; ?></td>
                                                    <td><?= $sw->jam_awal;?>:<?= $sw->menit_awal;?> - <?= $sw->jam_akhir;?>:<?= $sw->menit_akhir;?></td>
                                                    <td><?= $sw->nama; ?></td>
                                                    <td class="actions">
                                                        <a href="">Edit</a>
                                                        <a href="<?=site_url('admin/akademik/destroyjadwal/'.$sw->id);?>" class="pull-right">Delete</a>
                                                    </td>
                                                </tr>
                                            <?php endforeach; ?>

                                            <?php foreach($jumat as $sw) : ?>
                                                <tr class="gradeX">
                                                    <td><?= $sw->hari; ?>
                                                    </td>
                                                    <td><?= $sw->nama_mapel; ?></td>
                                                    <td><?= $sw->jam_awal;?>:<?= $sw->menit_awal;?> - <?= $sw->jam_akhir;?>:<?= $sw->menit_akhir;?></td>
                                                    <td><?= $sw->nama; ?></td>
                                                    <td class="actions">
                                                        <a href="">Edit</a>
                                                        <a href="<?=site_url('admin/akademik/destroyjadwal/'.$sw->id);?>" class="pull-right">Delete</a>
                                                    </td>
                                                </tr>
                                            <?php endforeach; ?>

                                            <?php foreach($sabtu as $sw) : ?>
                                                <tr class="gradeX">
                                                    <td><?= $sw->hari; ?>
                                                    </td>
                                                    <td><?= $sw->nama_mapel; ?></td>
                                                    <td><?= $sw->jam_awal;?>:<?= $sw->menit_awal;?> - <?= $sw->jam_akhir;?>:<?= $sw->menit_akhir;?></td>
                                                    <td><?= $sw->nama; ?></td>
                                                    <td class="actions">
                                                        <a href="">Edit</a>
                                                        <a href="<?=site_url('admin/akademik/destroyjadwal/'.$sw->id);?>" class="pull-right">Delete</a>
                                                    </td>
                                                </tr>
                                            <?php endforeach; ?>
                                        </tbody>
                                    </table>

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

        <!-- Modal Edit -->
        <div class="modal fade" id="modaledit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
            </div>
            <div class="modal-body">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

<div style="display: none" id="urlhapus" url="<?php echo site_url('admin/akademik/destroyjadwal/');?>"></div>

<div style="display: none" id="urledit" url="<?php echo site_url('admin/lihatdata/editsiswa/');?>"></div>

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
        $('.hapus').click(function(e) {
            var id = $(this).attr('siswa');
            e.preventDefault();
            swal({
              title: "Are you sure?",
              text: "You will not be able to recover this imaginary file!",
              type: "warning",
              showCancelButton: true,
              confirmButtonColor: "#DD6B55",
              confirmButtonText: "Yes, delete it!",
              closeOnConfirm: false
          },
          function(){
            var url = $('#urlhapus').attr('url');

            window.location.href = url + '/' + id;
        });
        });
    });
</script>

</body>
</html>