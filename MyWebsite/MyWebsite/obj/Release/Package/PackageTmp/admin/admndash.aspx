<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admndash.aspx.cs" Inherits="MyWebsite.admndash" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Adhere | AdminDb</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="../bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- daterange picker -->
  <link rel="stylesheet" href="../plugins/daterangepicker/daterangepicker-bs3.css">
  <!-- bootstrap datepicker -->
  <link rel="stylesheet" href="../plugins/datepicker/datepicker3.css">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="../plugins/iCheck/all.css">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="../plugins/colorpicker/bootstrap-colorpicker.min.css">
  <!-- Bootstrap time Picker -->
  <link rel="stylesheet" href="../plugins/timepicker/bootstrap-timepicker.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="../select2.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <style type="text/css">.thumb-image{float:left;width:500px;position:relative;padding:5px;}</style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<form id="FORM1" runat="server">
<div class="wrapper">

  <header class="main-header">

    <!-- Logo -->
    <a href="DashBoard.aspx" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>Adhere</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>A</b>dhere</span>
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
                        <img id="imguser1" runat="server" class="img-circle" alt="User Image">
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
                        <img id="imguser2" runat="server" class="img-circle" alt="User Image">
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
      
        </div>
        <div class="pull-left info">
        
        </div>
      </div>
      <!-- search form -->
     
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li class="active">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
          </a>
         </li>
          
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Upload
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
        <div class="col-md-12">
          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title"><STRONG>UPLOAD PHOTOS/VIDEOS</STRONG></h3>
</div>
            
			
            <!-- /.box-header -->
            <div class="box-body">
            
                <div class="col-md-12">
                
                     <div class="box-tools pull-center">
               
            <!-- /.box-header -->
             <div class="col-md-12" align="center">
            <div class="col-md-6">
			  <div class="form-group">
                  <label>TITLE</label>
                  <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="ENTER ..."></asp:TextBox>
                <%--  <input type="text" class="form-control" placeholder="ENTER ...">--%>
                </div>
               <div class="form-group">
                  <label>TARGET GROUP</label>
                  <asp:TextBox ID="txtgrp" runat="server" class="form-control" placeholder="ENTER ..."></asp:TextBox>
                <%--  <input type="text" class="form-control" placeholder="ENTER ...">--%>
                </div>
			 
               

				</div>
               
       
			  <div class="col-md-6"> 
          <%--  <script type="text/javascript">
                function configureDropDownLists(slctstate, Select2) {
                    var X = ['--SELECT--', 'MATHS', 'ENGLISH', 'HINDI', 'SCIENCE', 'SOCIAL SCIENCE'];
                    var XII = ['--SELECT--', 'MATHS', 'ENGLISH', 'HINDI', 'PHYSICS', 'CHEMISTRY', 'BIOLOGY', 'COMPUTER SCIENCE'];
                    var ENGINEERING = ['--SELECT--', 'MATHS', 'PHYSICS', 'CHEMISTRY'];
                    var MEDICAL = ['--SELECT--', 'BIOLOGY', 'PHYSICS', 'CHEMISTRY'];
                    var HUMANITIES = ['--SELECT--', 'HISTORY', 'CIVICS', 'GEOGRAPHY'];

                    switch (slctstate.value) {
                        case 'X':
                            Select2.options.length = 0;
                            for (i = 0; i < X.length; i++) {
                                createOption(Select2, X[i], X[i]);
                            }
                            break;
                        case 'XII':
                            Select2.options.length = 0;
                            for (i = 0; i < XII.length; i++) {
                                createOption(Select2, XII[i], XII[i]);
                            }
                            break;
                        case 'ENGINEERING':
                            Select2.options.length = 0;
                            for (i = 0; i < ENGINEERING.length; i++) {
                                createOption(Select2, ENGINEERING[i], ENGINEERING[i]);
                            }
                            break;
                        case 'MEDICAL':
                            Select2.options.length = 0;
                            for (i = 0; i < MEDICAL.length; i++) {
                                createOption(Select2, MEDICAL[i], MEDICAL[i]);
                            }
                            break;
                        case 'HUMANITIES':
                            Select2.options.length = 0;
                            for (i = 0; i < HUMANITIES.length; i++) {
                                createOption(Select2, HUMANITIES[i], HUMANITIES[i]);
                            }
                            break;
                        default:
                            Select2.options.length = 0;
                            break;
                    }

                }

                function createOption(slctstate, text, value) {
                    var opt = document.createElement('option');
                    opt.value = value;
                    opt.text = text;
                    slctstate.options.add(opt);
                }
</script>--%>

              <div class="form-group">
                <label>SELECT TYPE</label>
                <select class="form-control select2" runat="server" id="slctstate" style="width: 100%;" onchange="configureDropDownLists(this,document.getElementById('Select2'))">
                  <option selected="selected">--SELECT--</option>
                  <option>JPG</option>
                  <option>PNG</option>
                  <option>MP4</option> 
                 
				 		  
                </select>
              </div>
       
			 
            <div class="form-group">
			  <label for="exampleInputFile">UPLOAD PHOTO/VIDEO</label>
			    <div id="wrapper" style="margin-top: 20px;">
                <asp:FileUpload runat="server" ID="fileUpload" />
                <%--<input id="fileUpload" runat="server" type="file"/> --%>
<%--<div id="image-holder"></div>--%>
</div>
<br />
<br />
                     <asp:Button ID="btnNote" runat="server" CssClass="btn btn-block btn-info" Text="UPLOAD" OnClick="btnNote_Click" Font-Bold="true" width="200px" />
                   
			  </div>
			  </div>
             <asp:Label ID="lblmsg" runat="server" Font-Bold="True"></asp:Label>
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
              <h3 class="box-title"><STRONG>PATIENT DETAILS</STRONG></h3>
</div>
            
			
            <!-- /.box-header -->
            <div class="box-body">
            
                <div class="col-md-12">
                
                     <div class="box-tools pull-center">
               
            <!-- /.box-header -->
             <div class="col-md-12" align="center">
            
             
			
<asp:GridView ID="grdpat" runat="server" CssClass="table table-bordered table-hover" AutoGenerateColumns="false" OnSelectedIndexChanged="grdpat_SelectedIndexChanged">
    <Columns>
        <asp:TemplateField  HeaderText="SLNO" itemstyle-wrap="true">
                   <ItemTemplate >
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>

                </asp:TemplateField>
        <asp:TemplateField HeaderText="NAME">
                    <ItemTemplate>
                        <asp:Label ID="lblname" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            <asp:TemplateField HeaderText="GENDER">
                    <ItemTemplate>
                        <asp:Label ID="lblname" runat="server" Text='<%#Eval("gen").ToString() == "M" ? "Male" : "Female" %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
        <asp:TemplateField HeaderText="DATE OF BIRTH">
                    <ItemTemplate>
                        <asp:Label ID="lblname" runat="server" Text='<%#Eval("dob") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
          <asp:TemplateField HeaderText="STROKE SIDE">
                    <ItemTemplate>
                        <asp:Label ID="lblname" runat="server" Text='<%#Eval("side").ToString() == "R" ? "Right" : "Left" %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
          <asp:TemplateField HeaderText="DURATION OF STROKE(MONTHS)">
                    <ItemTemplate>
                        <asp:Label ID="lblname" runat="server" Text='<%#Eval("dur_stroke") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
         <asp:TemplateField HeaderText="SECONDARY PREVENTION">
                    <ItemTemplate>
                        <asp:Label ID="lblname" runat="server" Text='<%#Eval("sec_prev").ToString() == "Y" ? "Yes" : "No" %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
      
         <asp:TemplateField HeaderText="ACTIVITIES OF DAILY LIVING (ADL)">
                    <ItemTemplate>
                        <asp:Label ID="lblname" runat="server" Text='<%#Eval("adl").ToString() == "Y" ? "Yes" : "No" %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
          <asp:TemplateField HeaderText="MOBILITY">
                    <ItemTemplate>
                        <asp:Label ID="lblname" runat="server" Text='<%#Eval("mob").ToString() == "Y" ? "Yes" : "No" %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
          <asp:TemplateField HeaderText="SPASTICITY">
                    <ItemTemplate>
                        <asp:Label ID="lblname" runat="server" Text='<%#Eval("spac").ToString() == "Y" ? "Yes" : "No" %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
          <asp:TemplateField HeaderText="PAIN">
                    <ItemTemplate>
                        <asp:Label ID="lblname" runat="server" Text='<%#Eval("mob").ToString() == "Y" ? "Yes" : "No" %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
          <asp:TemplateField HeaderText="LIFE AFTER STROKE">
                    <ItemTemplate>
                        <asp:Label ID="lblname" runat="server" Text='<%#Eval("laf").ToString() == "Y" ? "Yes" : "No" %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
         <asp:TemplateField HeaderText="FATIGUE">
                    <ItemTemplate>
                        <asp:Label ID="lblname" runat="server" Text='<%#Eval("fatg").ToString() == "Y" ? "Yes" : "No" %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
           <asp:TemplateField HeaderText="MESSAGE">
                    <ItemTemplate>
                        <asp:TextBox ID="txtmsg" runat="server" CssClass="form-control" placeholder="TYPE YOUR MESSGAE"></asp:TextBox>
                   <asp:Button ID="btnmsg" runat="server" CssClass="btn btn-success" Text="Send" />
                         </ItemTemplate>
                </asp:TemplateField>
    </Columns>
</asp:GridView>
             
             
         
            
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
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

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
</form>
</body>
</html>
