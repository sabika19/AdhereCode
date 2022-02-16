<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyCom.aspx.cs" Inherits="MyWebsite.MyCom" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<style type="text/css" runat="server">
.td
{
    padding-left:50px;
    padding-right: 50px;
    
}
.table
{
    padding-left:50px;
    padding-right: 50px;
    
}
style1
{
}
</style>
   <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Adhere | My Excercises</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">

  <!-- Select2 -->
  <link rel="stylesheet" href="select2.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <style type="text/css">.thumb-image{float:left;width:500px;position:relative;padding:5px;}</style>
     <script type="text/javascript">
        function showtxtarea()
        {
            var x = document.getElementById("divstatus");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }
    </script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<form id="FORM1" runat="server">
<div class="wrapper">

  <header class="main-header">

    <!-- Logo -->
    <a href="NewDAshBoard.aspx" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>Adhere</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Ad</b>here</span>
    </a>

    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
       <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
         
          
            <ul class="dropdown-menu">
              
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- start message -->
                    <a href="#">
                      <div class="pull-left">
                       <img id="imguser1" runat="server" class="img-circle" alt="User Image" />
                      </div>
                      <h4>
                        Support Team
                        <small><i class="fa fa-clock-o"></i> 5 mins</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <!-- end message -->
               
                
                
                  <li>
                    <a href="#">
                      <div class="pull-left">
                           <img id="imguser2" runat="server" class="img-circle" alt="User Image" />
                      </div>
                      <h4>
                        Reviewers
                        <small><i class="fa fa-clock-o"></i> 2 days</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                </ul>
              </li>
            
            </ul>
          </li>
          <!-- Notifications: style can be found in dropdown.less -->
          <li class="dropdown notifications-menu">
           
            <ul class="dropdown-menu">
            
             
              <li class="footer"><a href="#">View all</a></li>
            </ul>
          </li>
          <!-- Tasks: style can be found in dropdown.less -->
          <li class="dropdown tasks-menu">
         
            <ul class="dropdown-menu">
             
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- Task item -->
                   
                  </li>
                  <!-- end task item -->
                  <li><!-- Task item -->
                   
                  </li>
                  <!-- end task item -->
                  <li><!-- Task item -->
                    
                  </li>
                  <!-- end task item -->
                  <li><!-- Task item -->
                   
                  </li>
                  <!-- end task item -->
                </ul>
              </li>
              <li class="footer">
                
              </li>
            </ul>
          </li>
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img id="imguser3" runat="server" class="user-image" alt="User Image">
              <span class="hidden-xs"><asp:Label ID="lblname2" runat="server" Font-Bold="true"></asp:Label></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img id="imguser4" runat="server" class="img-circle" alt="User Image" />

                <p>
                  <asp:Label ID="lblname" runat="server" Font-Bold="true"></asp:Label>
                  <small>Member since Apr. 2018</small>
                </p>
              </li>
              <!-- Menu Body -->
            
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="Profile.aspx" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="Default.aspx" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
         
        </ul>
      </div>

    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
         <img id="imguser5" runat="server" class="img-circle" alt="User Image" />
        </div>
        <div class="pull-left info">
          <p> <asp:Label ID="lblname1" runat="server" Font-Bold="true"></asp:Label></p>
        
        </div>
      </div>
      <!-- search form -->
     
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li >
          <a href="NewDAshBoard.aspx">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
          </a>
         </li> 
             <li><a href="Profile.aspx"><i class="fa fa-circle-o"></i> <span>Profile</span></a></li>
             <li ><a href="MyEx.aspx"><i class="fa fa-circle-o"></i> <span>My Excercises</span></a></li>
              <li class="active"><a href="MyCom.aspx"><i class="fa fa-circle-o"></i> <span>My Community</span></a></li>
                <li><a href="Feedback.aspx"><i class="fa fa-circle-o"></i>Messages</a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        My Notes
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="NewDAshBoard.aspx"><i class="fa fa-dashboard"></i> Home</a></li>
       
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Info boxes -->
       <div class="row">
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-aqua"><i class="ion ion-calendar"></i></span>

            <div class="info-box-content">
              <span class="info-box-text"><strong>START DATE</strong></span>
              <span class="info-box-number"><asp:Label ID="lblnotesup" Text="Apr 12,2018" runat="server" Font-Bold="true"></asp:Label></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-red"><i class="ion ion-trophy"></i></span>

            <div class="info-box-content">
              <span class="info-box-text"><strong>SESSIONS COMPLETED</strong></span>
              <span class="info-box-number"><asp:Label ID="lblnotessold" Text="5" runat="server" Font-Bold="true"></asp:Label></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <!-- fix for small devices only -->
        <div class="clearfix visible-sm-block"></div>
         <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-yellow"><i class="ion ion-ios-bell-outline"></i></span>

            <div class="info-box-content">
              <span class="info-box-text"><strong>SESSIONS PENDING</strong></span>
              <span class="info-box-number"><asp:Label ID="lblnotesbought" Text="3" runat="server" Font-Bold="true"></asp:Label></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
           <a href="YourCart.aspx">    <span class="info-box-icon bg-green"><i class="ion ion-ios-clock-outline"></i></span></a>

            <div class="info-box-content">
           <span class="info-box-text"><strong>EXERCISE TIME</strong> </span>
              <span class="info-box-number"><asp:Label ID="lblnotescart" Text="11:00 AM" runat="server" Font-Bold="true"></asp:Label></span>
            </div> 
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
       
        <!-- /.col -->
      </div>
      <!-- /.row -->

    <div class="row">
        <div class="col-md-12">
          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title"><STRONG>MY COMMUNITY</STRONG></h3>
</div>
            
			
            <!-- /.box-header -->
            <div class="box-body">
            
                <div class="col-md-12">
                
                     <div class="box-tools pull-center">
               
            <!-- /.box-header -->
             <div class="col-md-12" align="center">
          
			
            <div class="form-group">
                    <label> Your Status  <br /><asp:Label ID="lblstatus" runat="server" CssClass="label-info"></asp:Label></label><input type="image" id="edt"  src="images/edt.jpg" Height="20px" Width="20px" onclick="showtxtarea();" /><br />
			<div id="divstatus" style="display:block">

                 <textarea id="txtstatus" runat="server" cols="50" ></textarea><br /><br />
                     <asp:Button ID="btnNote" runat="server" CssClass="btn btn-info" Text="POST STATUS" OnClick="btnNote_Click" Font-Bold="true" width="174px" Height="47px" />
                   </div>
			  </div>
			  
             <div class="form-group">
                 
               
               
              
              </div>
             <br />
           
             <br />
              <br />
               <br />
             
              <div id="divtable" runat="server" align="center">
            
                  </div>
         
            
             </div>
              
             
            
            </div>
               

                  <div class="chart">
                    <!-- Sales Chart Canvas -->
                
                  <!-- /.chart-responsive -->
                </div>
                <!-- /.col -->
               
                <!-- /.col -->
              </div>
              <!-- /.row -->
           
            <!-- ./box-body -->
 
            <!-- /.box-footer -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
    

<div align="center">


                  </div>
                  <!-- /.chart-responsive -->
                </div>
                <!-- /.col -->
                <div class="row">
        <div class="col-md-12">
          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title"><STRONG>WHAT'S NEW @ Adhere</STRONG></h3>
</div>
            
			
            <!-- /.box-header -->
            <div class="box-body">
            
                <div class="col-md-12">
                
                     <div class="box-tools pull-center">
               
            <!-- /.box-header -->
             <div class="col-md-12" align="center">
            <br />
        
                 
              


           <br />
              <br />
             
			
 <div id="div1" runat="server">
 </div>
              
             <br />
             <asp:Label ID="lblmsg" runat="server" Font-Bold="True"></asp:Label>
             <br />
           
             <br />
              <br />
               <br />
             
             
         
            
             </div>
              
             
            
            </div>
               

                  <div class="chart">
                    <!-- Sales Chart Canvas -->
                
                  <!-- /.chart-responsive -->
                </div>
                <!-- /.col -->
               
                <!-- /.col -->
              </div>
              <!-- /.row -->
           
            <!-- ./box-body -->
 
            <!-- /.box-footer -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
    

<div align="center">


                  </div>
                  <!-- /.chart-responsive -->
                </div>
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
            <!-- ./box-body -->
 
            <!-- /.box-footer -->
      
      <!-- /.row -->

      <!-- Main row -->
     
      <!-- /.row -->

  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 1.0.1
    </div>
    <strong>Copyright &copy; 2018 <a href="Default.aspx">Adhere</a>.</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
 
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>

</div>
<!-- ./wrapper -->

<script src="../../plugins/jQuery/jQuery-2.2.0.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="../../bootstrap/js/bootstrap.min.js"></script>
<!-- Select2 -->
<script src="../../plugins/select2/select2.full.min.js"></script>
<!-- InputMask -->
<script src="../../plugins/input-mask/jquery.inputmask.js"></script>
<script src="../../plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="../../plugins/input-mask/jquery.inputmask.extensions.js"></script>
<!-- date-range-picker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
<script src="../../plugins/daterangepicker/daterangepicker.js"></script>
<!-- bootstrap datepicker -->
<script src="../../plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- bootstrap color picker -->
<script src="../../plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<!-- bootstrap time picker -->
<script src="../../plugins/timepicker/bootstrap-timepicker.min.js"></script>
<!-- SlimScroll 1.3.0 -->
<script src="../../plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- iCheck 1.0.1 -->
<script src="../../plugins/iCheck/icheck.min.js"></script>
<!-- FastClick -->
<script src="../../plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
    <script>
  $(function () {
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('editor1');
    //bootstrap WYSIHTML5 - text editor
    $(".textarea").wysihtml5();
  });
</script>
<script>
    $(function () {
        //Initialize Select2 Elements
        $(".select2").select2();

        //Datemask dd/mm/yyyy
        $("#datemask").inputmask("dd/mm/yyyy", { "placeholder": "dd/mm/yyyy" });
        //Datemask2 mm/dd/yyyy
        $("#datemask2").inputmask("mm/dd/yyyy", { "placeholder": "mm/dd/yyyy" });
        //Money Euro
        $("[data-mask]").inputmask();

        //Date range picker
        $('#reservation').daterangepicker();
        //Date range picker with time picker
        $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A' });
        //Date range as a button
        $('#daterange-btn').daterangepicker(
        {
            ranges: {
                'Today': [moment(), moment()],
                'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                'This Month': [moment().startOf('month'), moment().endOf('month')],
                'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
            },
            startDate: moment().subtract(29, 'days'),
            endDate: moment()
        },
        function (start, end) {
            $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        }
    );

        //Date picker
        $('#datepicker').datepicker({
            autoclose: true
        });

        //iCheck for checkbox and radio inputs
        $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
            checkboxClass: 'icheckbox_minimal-blue',
            radioClass: 'iradio_minimal-blue'
        });
        //Red color scheme for iCheck
        $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
            checkboxClass: 'icheckbox_minimal-red',
            radioClass: 'iradio_minimal-red'
        });
        //Flat red color scheme for iCheck
        $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
            checkboxClass: 'icheckbox_flat-green',
            radioClass: 'iradio_flat-green'
        });

        //Colorpicker
        $(".my-colorpicker1").colorpicker();
        //color picker with addon
        $(".my-colorpicker2").colorpicker();

        //Timepicker
        $(".timepicker").timepicker({
            showInputs: false
        });
    });
    function slctstate_onclick() {

        FORM1.submit();

    }

</script>
<script type="text/javascript">
    $(function () {

        // var fileName = document.getElementById(btnShow0).value;
        //var fileName = document.getElementById(btnid).value;
        // var title = "FILE PREVIEW";
        // var fileName = this.attr('value');

        var title = "FILE PREVIEW";

        $('.btnShow').click(function () {
            var fileName = this.id;
            $("#dialog").dialog({
                modal: true,
                title: title,
                width: 540,
                height: 450,
                buttons: {
                    Close: function () {
                        $(this).dialog('close');
                    }
                },
                open: function () {

                    var object = "<object data=\"{FileName}\" type=\"application/pdf\" width=\"500px\" height=\"300px\">";
                    object += "If you are unable to view file, you can download from <a href = \"{FileName}\">here</a>";
                    object += " or download <a target = \"_blank\" href = \"http://get.adobe.com/reader/\">Adobe PDF Reader</a> to view the file.";
                    object += "</object>";
                    object = object.replace(/{FileName}/g, "" + fileName);
                    $("#dialog").html(object);
                }
            });
        });
    });
</script>
</form>
</body>
</html>
