<!DOCTYPE html>
<html>
<head>


    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
    <meta name="author" content="Coderthemes">

    <link rel="shortcut icon" href="<?php echo base_url('assets/blue/images/favicon_1.ico');?>">

    <title>Moltran - Responsive Admin Dashboard Template</title>

    <!-- Base Css Files -->
    <link href="<?php echo base_url('assets/blue/css/bootstrap.min.css');?>" rel="stylesheet" />

    <!-- Font Icons -->
    <link href="<?php echo base_url('assets/blue/assets/font-awesome/css/font-awesome.min.css');?>" rel="stylesheet" />
    <link href="<?php echo base_url('assets/blue/assets/ionicon/css/ionicons.min.css');?>" rel="stylesheet" />
    <link href="<?php echo base_url('assets/blue/css/material-design-iconic-font.min.css');?>" rel="stylesheet">

    <!-- animate css -->
    <link href="<?php echo base_url('assets/blue/css/animate.css');?>" rel="stylesheet" />

    <!-- Waves-effect -->
    <link href="css/waves-effect.css');?>" rel="stylesheet">

    <!-- Custom Files -->
    <link href="<?php echo base_url('assets/blue/css/helper.css');?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo base_url('assets/blue/css/style.css');?>" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <script src="<?php echo base_url('assets/blue/js/modernizr.min.js');?>"></script>
        
    </head>
    <body>



        <div class="wrapper-page">
            <div class="panel panel-color panel-primary panel-pages">
                <div class="panel-heading bg-img">
                <div class="pull-left image"></div> 
                     <a href="index.html" class="logo" class="img-circle" ><img style="text-align: center; width: 50px " src="<?php echo base_url('assets/blue/images/yasfi.png');?>"> <span>MTs.Fisabilillah </span></a>
                </div>


                <div class="panel-body">
                <?= $this->session->flashdata('gagal');?>
                    <form class="form-horizontal m-t-20" method="POST" action="<?= site_url('auth/login/cek_login');?>">

                        <div class="form-group ">
                            <div class="col-xs-12">
                                <input class="form-control input-lg " type="text" name="username" required="" placeholder="Username">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-12">
                                <input class="form-control input-lg" id="formpasswd" name="password" type="password" required="" placeholder="Password">
                            </div>
                        </div>

                        <div class="form-group ">
                        <div class="col-xs-12">
                            <div class="checkbox checkbox-primary">
                                <input id="checkbox-signup" class="tampil" type="checkbox">
                                <label for="checkbox-signup">
                                    Tampilkan Password
                                </label>
                            </div>
                            
                        </div>
                    </div>


                        <div class="form-group text-center m-t-40">
                            <div class="col-xs-12">
                                <button class="btn btn-primary btn-lg w-lg waves-effect waves-light" type="submit">Log In</button>
                            </div>
                        </div>

                        <div class="form-group m-t-30">
                           
                            </div>
                        </div>
                    </form> 
                </div>                                 
                
            </div>
        </div>

        
        <script>
            var resizefunc = [];
        </script>
        <script src="<?php echo base_url('assets/blue/js/jquery.min.js');?>"></script>
        <script src="<?php echo base_url('assets/blue/js/bootstrap.min.js');?>"></script>
        <script src="<?php echo base_url('assets/blue/js/waves.js');?>"></script>
        <script src="<?php echo base_url('assets/blue/js/wow.min.js');?>"></script>
        <script src="<?php echo base_url('assets/blue/js/jquery.nicescroll.js');?>" type="text/javascript"></script>
        <script src="<?php echo base_url('assets/blue/js/jquery.scrollTo.min.js');?>"></script>
        <script src="<?php echo base_url('assets/blue/assets/jquery-detectmobile/detect.js');?>"></script>
        <script src="<?php echo base_url('assets/blue/assets/fastclick/fastclick.js');?>"></script>
        <script src="<?php echo base_url('assets/blue/assets/jquery-slimscroll/jquery.slimscroll.js');?>"></script>
        <script src="<?php echo base_url('assets/blue/assets/jquery-blockui/jquery.blockUI.js');?>"></script>


        <!-- CUSTOM JS -->
        <script src="<?php echo base_url('assets/blue/js/jquery.app.js');?>"></script>

        <script>
            $(document).ready(function(){
                $('.tampil').click(function(){
                    if($(this).is(':checked'))
                    {
                        $('#formpasswd').attr('type','text');
                    }
                    else
                    {
                        $('#formpasswd').attr('type','password');
                    }
                });
            });
        </script>

    </body>
    </html>