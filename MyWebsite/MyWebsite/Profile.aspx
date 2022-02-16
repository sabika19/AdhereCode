<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="MyWebsite.Profile" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title> Adhere | Profile</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker-bs3.css">
  <!-- bootstrap datepicker -->
  <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="http://adhere.co.in/plugins/iCheck/all.css">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="plugins/colorpicker/bootstrap-colorpicker.min.css">
  <!-- Bootstrap time Picker -->
  <link rel="stylesheet" href="http://adhere.co.in/plugins/timepicker/bootstrap-timepicker.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="select2.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <style type="text/css">
      .thumb-image{float:left;width:200px;position:relative;padding:5px;}
     .modalBackground
    {
        background-color: Black;
       filter: alpha(opacity=90);
        opacity: 0.8;
    }
    .modalPopup
    {
        background-color: #FFFFFF;
        border-width: 3px;
        border-style: solid;
        border-color: black;
        padding-top: 10px;
        padding-left: 10px;
        width: 500px;
        height: 500px;
    }
      .auto-style1 {
          font-size: small;
      }
      .auto-style2 {
          border: 3px solid black;
          background-color: #FFFFFF;
          padding-top: 10px;
          padding-left: 10px;
          width: 500px;
          height: 500px;
          font-size: small;
      }
      .auto-style3 {
          padding: 8px 15px;
          margin-bottom: 20px;
          list-style: none;
          background-color: #f5f5f5;
          border-radius: 4px;
          font-size: small;
      }
  </style>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <form id="form1" runat="server">
<div class="wrapper">

  <header class="main-header">
      
    <!-- Logo -->
    <a href="../../index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A</b>dhere
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>A</b>dhere
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation
        <span class="icon-bar">
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
         
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
              
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              
              <asp:Image id="aspimguser3" runat="server" class="user-image" alt="User Image" />
              
              <span class="hidden-xs">  <asp:Label ID="Label2" runat="server" Font-Bold="true"></asp:Label>
            </a>
            <ul class="dropdown-menu">
                
              <!-- User image -->
              <li class="user-header">
                <asp:Image id="aspimguser1" runat="server"  class="img-circle" alt="User Image" />

                <p>
                  <asp:Label ID="Label1" runat="server" Font-Bold="true"></asp:Label>
                    
                  <small class="auto-style1">Member since Nov. 2012</small>
                </p>
              </li>
              <!-- Menu Body -->
           
              <!-- Menu Footer-->
                  
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat" style="font-size: small">Profile</a> 
                </div>
                <div class="pull-right">
                  <a href="Default.aspx" class="btn btn-default btn-flat" style="font-size: small">Sign out</a> 
                </div>
              </li>
            </ul>
              
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
     <div class="user-panel">
        <div class="pull-left image">
          <asp:Image id="aspimguser2" runat="server" class="img-circle" alt="User Image" />
        </div>
        <div class="pull-left info">
          <p> <asp:Label ID="lblname1" runat="server" Font-Bold="true"></asp:Label></p>
        
        </div>
      </div>
     <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>
        <li class="active">
          <a href="NewDAshBoard.aspx">
            <i class="fa fa-dashboard"></i> <span>DashBoard
          </a>
         </li> 
           <li><a href="Profile.aspx"><i class="fa fa-circle-o"></i> <span>Profile</a></li>
             <li><a href="MyEx.aspx"><i class="fa fa-circle-o"></i> <span>My Excercises</a></li>
              <li><a href="Mycom.aspx"><i class="fa fa-circle-o"></i> <span>My Community</a></li>
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
          MY PROFILE
        
        <small class="auto-style1">EDIT/UPDATE</small> 
      </h1>
      <ol class="auto-style3">
        <li><a href="NewDAshBoard.aspx"><i class="fa fa-dashboard"></i> Home</a></li>
       
        <li class="active">My Profile</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- SELECT2 EXAMPLE -->
      <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="auto-style1">PERSONAL</h3>

      
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <div class="row">
            <div class="col-md-6">
			
				 <label> EMAIL ID</label>
				  <BR/>
				 
				 <div class="input-group">
				 
                <span class="input-group-addon"><i class="fa fa-envelope"></i>
                <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="EMAIL ..." TextMode="Email" CssClass="auto-style1" ></asp:TextBox>
                     
             <%--   <input type="email" class="form-control" placeholder="EMAIL ...">--%>
              </div>
			  
             

				 <div class="form-group">
                  <label>ADDRESS</label>
                     <asp:TextBox ID="txtadd1" runat="server" type="text" class="form-control" placeholder="ADDRESS LINE 1 ..." ></asp:TextBox>
<%--                  <input type="text" class="form-control" placeholder="ADDRESS LINE 1 ...">--%>
				  <br/>
                   <asp:TextBox ID="txtadd2" runat="server" type="text" class="form-control" placeholder="ADDRESS LINE 2 ..."></asp:TextBox>
				  <%-- <input type="text" class="form-control" placeholder="ADDRESS LINE 2 ...">--%>
                </div>
                <!-- /.input group -->
              <div class="form-group">
                  
                <label>SELECT GENDER</label>
                <select class="form-control select2" runat="server" id="Select1" style="width: 100%; font-size: small;">
                  <option selected="selected">--Select--</option>
                  <option>Female</option>
                    <option>Male</option>
                    </select>
                  </div>
			  
              <div class="form-group">
                  
                <label>SELECT STATE</label>
                <select class="form-control select2" runat="server" id="slctstate" style="width: 100%; font-size: small;">
                  <option selected="selected">Karnataka</option>
                  <option>Arunachal Pradesh</option>
                  <option>Assam</option>
                  <option>Bihar</option>
				  <option>Chhattisgarh</option>
                  <option>Delhi</option>
                  <option>Gujarat</option>
				  <option>Goa</option>
                  <option>Haryana</option>
				   <option>Himachal Pradesh</option>
                  <option>Jammu & Kashmir</option>
				   <option>Jharkhand</option>
                  <option>Andhra Pradesh</option>
                  <option>Kerala</option>
				  <option>Madhya Pradesh</option>
                  <option>Maharashtra</option>
                  <option>Manipur</option>
				  <option>Meghalaya</option>
				   <option>Mizoram</option>
                  <option>Nagaland</option>
				  <option>Odisha</option>
				   <option>Punjab</option>
                  <option>Rajasthan</option>
                  <option>Sikkim</option>
                  <option>Tamil Nadu</option>
				   <option>Telangana</option>
				   <option>Tripura</option>
				   <option>Uttar Pradesh</option>
				   <option>Uttarakhand</option>
				   <option>West Bengal</option>
                </select>
              </div>
              <!-- /.form-group -->
			   <div class="form-group">
                  <label>PIN CODE</label>
                  <asp:TextBox ID="txtPin" class="form-control" runat="server" placeholder="ENTER ..." TextMode="number" MaxLength="6" ></asp:TextBox>
                
                </div>
                <div class="form-group">
                  <label>DURATION OF STROKE</label>
                  <asp:TextBox ID="txtdur" class="form-control" runat="server" placeholder="ENTER IN MONTHS..." TextMode="number" MaxLength="6" ></asp:TextBox>
                
                </div>
             <div class="form-group">
			  
                 
			  
                <label>DATE OF BIRTH</label>

                <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <asp:TextBox class="form-control pull-right" id="datepicker" runat="server" CssClass="auto-style1"></asp:TextBox>
                
                </div>
                <!-- /.input group -->
              </div>
			  </div>
			  <div class="col-md-6">
			  <div class="form-group">
			  <label for="exampleInputFile">UPLOAD/UPDATE PROFILE PIC</label>
			    <div id="wrapper" style="margin-top: 20px;">
                <asp:Image ID="imgprofile" runat="server" Height="200px" Width="200px" />
                <br />
                <br />
                    
                <asp:Button ID="btnpic" runat="server" class="alert-info" Text="CHANGE PHOTO" CssClass="btn btn-sm btn-success" />
                <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</cc1:ToolkitScriptManager>
                    
      <!-- ModalPopupExtender -->
                    
<cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="Panel1" TargetControlID="btnpic"
     CancelControlID="btnCancel" BackgroundCssClass="modalBackground">
</cc1:ModalPopupExtender>
<asp:Panel ID="Panel1" runat="server" CssClass="auto-style2" align="center" style = "display:none">
    UPLOAD/UPDATE PROFILE PIC<br /><br />
     <asp:FileUpload runat="server" ID="fileUpload" />
                <%--<input id="fileUpload" runat="server" type="file"/> --%>
<div id="image-holder"></div>
<br /><br />
    <asp:Button ID="btnOk" runat="server" Text="OK" OnClick="btnOK_Click" CausesValidation="false"  />
      <asp:Button ID="btnCancel" runat="server" Text="CANCEL" OnClick="btnCancel_Click" CausesValidation="false" />
    <asp:Label ID="msgpic" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label>
</asp:Panel>
               
</div>
                
			  </div>
			
			  </div>
			    <!-- text input -->
              
               <!--<label>Disabled</label>
                <select class="form-control select2" disabled="disabled" style="width: 100%;">
                  <option selected="selected">Alabama</option>
                  <option>Alaska</option>
                  <option>California</option>
                  <option>Delaware</option>
                  <option>Tennessee</option>
                  <option>Texas</option>
                  <option>Washington</option>
                </select>-->
              </div>
              <!-- /.form-group -->
            <!--</div>
            <!-- /.col -->
           
	<!--	   <div class="col-md-6">
              <!--<div class="form-group">
                <label>Multiple</label>
                <select class="form-control select2" multiple="multiple" data-placeholder="Select a State" style="width: 100%;">
                  <option>Alabama</option>
                  <option>Alaska</option>
                  <option>California</option>
                  <option>Delaware</option>
                  <option>Tennessee</option>
                  <option>Texas</option>
                  <option>Washington</option>
                </select>
              </div>
			  </DIV>
              <!-- /.form-group -->
           <!--   <div class="form-group">
                <label>Disabled Result</label>
                <select class="form-control select2" style="width: 100%;">
                  <option selected="selected">Alabama</option>
                  <option>Alaska</option>
                  <option disabled="disabled">California (disabled)</option>
                  <option>Delaware</option>
                  <option>Tennessee</option>
                  <option>Texas</option>
                  <option>Washington</option>
                </select>
              </div>
              <!-- /.form-group -->
           <!-- </div>
            <!-- /.col -->
         <!-- </div>
          <!-- /.row -->
        </div>
        <!-- /.box-body -->
       <!-- <div class="box-footer">
          Visit <a href="https://select2.github.io/">Select2 documentation</a> for more examples and information about
          the plugin.
        </div>-->
      </div>
      <!-- /.box -->

      <div class="row">
        <div class="col-md-12">

          <div class="box box-danger">
            <div class="box-header">
              <h3 class="auto-style1">Stroke Screening Form</h3>
            </div>
            <div class="box-body">
              <!-- Date dd/mm/yyyy -->
              <div class="form-group">
                <label>When do you wish to do exercises everyday?</label>
               <div class="bootstrap-timepicker">
                <div class="form-group">
                    
                  <label>Time picker:</label>

                  <div class="input-group">
                    <input class="form-control timepicker" style="font-size: small">

                    <div class="input-group-addon">
                      <i class="fa fa-clock-o"></i>
                    </div>
                  </div>
                  <!-- /.input group -->
              </div>
                <!-- /.form group -->
              </div>
               
              </div>
			     <div class="form-group">
                <label>Have you received on health-related lifestyle changes to prevent another stroke?</label>
                  <br />                <input type="checkbox" id="Checkbox1" class="auto-style1" runat="server" value="Y" >YES</input>
                       <input type="checkbox" id="Checkbox2" class="auto-style1" runat="server" value="N" >NO</input>
              </div>
                  <div class="form-group">
                <label>Are you finding it more difficult to take care of yourself?</label>
                    <br />            <input type="checkbox" id="Checkbox3" class="auto-style1" runat="server" value="Y" >YES</input>
                       <input type="checkbox" id="Checkbox4" class="auto-style1" runat="server" value="N" >NO</input>
              </div>
                  <div class="form-group">
                <label>Are you finding it difficult to walk or move safely (i.e., from bed to chair)?</label>
                    <br />            <input type="checkbox" id="Checkbox5" class="auto-style1" runat="server" value="Y" >YES</input>
                       <input type="checkbox" id="Checkbox6" class="auto-style1" runat="server" value="N" >NO</input>
              </div>
                  <div class="form-group">
                <label>Do you have increased stiffness in your arms, hands, or legs?</label>
                    <br />            <input type="checkbox" id="Checkbox7" class="auto-style1" runat="server" value="Y" >YES</input>
                       <input type="checkbox" id="Checkbox8" class="auto-style1" runat="server" value="N" >NO</input>
              </div>
                   <div class="form-group">
                <label>Do you have any pain?</label>
                     <br />          <input type="checkbox" id="Checkbox9" class="auto-style1" runat="server" value="Y" >YES</input>
                       <input type="checkbox" id="Checkbox10" class="auto-style1" runat="server" value="N" >NO</input>
              </div>
                   <div class="form-group">
                <label>Are you finding it more difficult to carry out leisure activities, hobbies or work?</label>
                      <br />        <input type="checkbox" id="Checkbox11" class="auto-style1" runat="server" value="Y" >YES</input>
                       <input type="checkbox" id="Checkbox12" class="auto-style1" runat="server" value="N" >NO</input>
              </div>
                  <div class="form-group">
                <label>Are you experiencing fatigue that is interfering with your ability to do your exercises or other activities?</label>
                    <br />     <input type="checkbox" id="Checkbox13" class="auto-style1" runat="server" value="Y" >YES</input>
                       <input type="checkbox" id="Checkbox14" class="auto-style1" runat="server" value="N" >NO</input>
              </div>
			
<%--<input type="text" class="form-control" placeholder="ENTER TOPIC...">--%>
              
                <!-- /.input group -->
              </div>
              <!-- Date mm/dd/yyyy -->
             <!-- <div class="form-group">
                <div class="input-group">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" class="form-control" data-inputmask="'alias': 'mm/dd/yyyy'" data-mask>
                </div>
                <!-- /.input group -->
             <!-- </div>
              <!-- /.form group -->

              <!-- phone mask -->
            <!--  <div class="form-group">
                <label>US phone mask:</label>

                <div class="input-group">
                  <div class="input-group-addon">
                    <i class="fa fa-phone"></i>
                  </div>
                  <input type="text" class="form-control" data-inputmask='"mask": "(999) 999-9999"' data-mask>
                </div>
                <!-- /.input group -->
            <!--  </div>
              <!-- /.form group -->

              <!-- phone mask -->
          <!--    <div class="form-group">
                <label>Intl US phone mask:</label>

                <div class="input-group">
                  <div class="input-group-addon">
                    <i class="fa fa-phone"></i>
                  </div>
                  <input type="text" class="form-control" data-inputmask="'mask': ['999-999-9999 [x99999]', '+099 99 99 9999[9]-9999']" data-mask>
                </div>
                <!-- /.input group -->
         <!--     </div>
              <!-- /.form group -->

              <!-- IP mask -->
          <!--    <div class="form-group">
                <label>IP mask:</label>

                <div class="input-group">
                  <div class="input-group-addon">
                    <i class="fa fa-laptop"></i>
                  </div>
                  <input type="text" class="form-control" data-inputmask="'alias': 'ip'" data-mask>
                </div>
                <!-- /.input group -->
          <!--    </div>
              <!-- /.form group -->

          <!--  </div>
            <!-- /.box-body -->
         <!-- </div>
          <!-- /.box -->

      <!--    <div class="box box-info">
            <div class="box-header">
              <h3 class="box-title">Color & Time Picker</h3>
            </div>
            <div class="box-body">
              <!-- Color Picker -->
       <!--       <div class="form-group">
                <label>Color picker:</label>
                <input type="text" class="form-control my-colorpicker1">
              </div>
              <!-- /.form group -->

              <!-- Color Picker -->
             <!-- <div class="form-group">
                <label>Color picker with addon:</label>

                <div class="input-group my-colorpicker2">
                  <input type="text" class="form-control">

                  <div class="input-group-addon">
                    <i></i>
                  </div>
                </div>
                <!-- /.input group -->
              <!--</div>
              <!-- /.form group -->

              <!-- time Picker -->
            <!--  <div class="bootstrap-timepicker">
                <div class="form-group">
                  <label>Time picker:</label>

                  <div class="input-group">
                    <input type="text" class="form-control timepicker">

                    <div class="input-group-addon">
                      <i class="fa fa-clock-o"></i>
                    </div>
                  </div>
                  <!-- /.input group -->
             <!--   </div>
                <!-- /.form group -->
             <!-- </div>-->
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

        </div>
        <!-- /.col (left) -->
      
        </div>
        <!-- /.col (right) -->
      </div>
      <!-- /.row -->
	  <div align="center">
    
      <asp:Button ID="btnSave" runat="server" class="btn btn-block btn-danger btn-sm" 
          Text="SAVE CHANGES" onclick="btnSave_Click" />
 <%--<button type="button" class="btn btn-block btn-danger btn-lg">SAVE CHANGES</button>--%>
 </form>
</div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.3.3
    </div>
    <strong>Copyright &copy; 2018 <a href="Default.aspx">Adhere</a>.</strong> All rights
    reserved.
  
  </footer>

  <!-- Control Sidebar -->
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>

<!-- ./wrapper -->

<!-- jQuery 2.2.0 -->
<script src="plugins/jQuery/jQuery-2.2.0.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- Select2 -->
<script src="plugins/select2/select2.full.min.js"></script>
<!-- InputMask -->
<script src="plugins/input-mask/jquery.inputmask.js"></script>
<script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="plugins/input-mask/jquery.inputmask.extensions.js"></script>
<!-- date-range-picker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<!-- bootstrap datepicker -->
<script src="plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- bootstrap color picker -->
<script src="plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<!-- bootstrap time picker -->
<script src="http://adhere.co.in/plugins/timepicker/bootstrap-timepicker.min.js"></script>
<!-- SlimScroll 1.3.0 -->
<script src="../../plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- iCheck 1.0.1 -->
<script src="http://adhere.co.in/plugins/iCheck/icheck.min.js"></script>
<!-- FastClick -->
<script src="http://adhere.co.in/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
<!-- Page script -->
<script>
    $(document).ready(function () {
        $("#fileUpload").on('change', function () {
            //Get count of selected files
            var countFiles = $(this)[0].files.length;
            var imgPath = $(this)[0].value;
            var extn = imgPath.substring(imgPath.lastIndexOf('.') + 1).toLowerCase();
            var image_holder = $("#image-holder");
            image_holder.empty();
            if (extn == "gif" || extn == "png" || extn == "jpg" || extn == "jpeg") {
                if (typeof (FileReader) != "undefined") {
                    //loop for each file selected for uploaded.
                    for (var i = 0; i < countFiles; i++) {
                        var reader = new FileReader();
                        reader.onload = function (e) {
                            $("<img />", {
                                "src": e.target.result,
                                "class": "thumb-image"
                            }).appendTo(image_holder);
                        }
                        image_holder.show();
                        reader.readAsDataURL($(this)[0].files[i]);
                    }
                } else {
                    alert("This browser does not support FileReader.");
                }
            } else {
                alert("Pls select only images");
            }
        });
    });
</script>
<script>
    $(function () {
        //Initialize Select2 Elements
        $(".select2").select2();

 

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

  

        //Timepicker
        $(".timepicker").timepicker({
            showInputs: false
        });
    
    });
</script>
</body>
</html>
