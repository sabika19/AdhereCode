<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewDAshBoard.aspx.cs" Inherits="MyWebsite.NewDAshBoard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>ADHERE | DASHBOARD</title>
      <link rel="shortcut icon" href="images/adhere.png" type="image/x-icon">
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css" />
  <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/blitzer/jquery-ui.css" rel="stylesheet" type="text/css" />
<%-- <link rel="Stylesheet" href="Styles/quote.css" />--%>
     <link rel="Stylesheet" href="Styles/quote1.css" />
       <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <style type="text/css">
  .textbox { 
    border: 1px solid #848484; 
    -webkit-border-radius: 30px; 
    -moz-border-radius: 30px; 
    border-radius: 30px; 
    outline:0; 
    height:45px; 
    width: 850px; 
    padding-left:10px; 
    padding-right:10px; 
     box-shadow: 5px 5px 5px grey;
  } 
  .mGrid {   
    width: 100%;   
    background-color: #fff;   
    margin: 5px 0 10px 0;   
    border: solid 1px #525252;   
    border-collapse:collapse; 
    
      
}  
.mGrid td {   
    padding: 2px;   
    border: solid 1px #c1c1c1;   
    color: #717171;   
    
}  
.mGrid th {   
    padding: 4px 2px;   
    color: #fff;   
    background: #424242 url(images/grd_head.png) repeat-x top;   
    border-left: solid 1px #525252;   
    font-size: 0.9em;   
   
}  
.mGrid .alt { background: #fcfcfc url(images/grd_alt.png) repeat-x top; }  
.mGrid .pgr { background: #424242 url(images/grd_pgr.png) repeat-x top; }  
.mGrid .pgr table { margin: 5px 0; }  
.mGrid .pgr td {   
    border-width: 0;   
    padding: 0 6px;   
    border-left: solid 1px #666;   
    font-weight: bold;   
    color: #fff;   
    line-height: 12px;   
 }     
.mGrid .pgr a { color: #666; text-decoration: none; }  
.mGrid .pgr a:hover { color: #000; text-decoration: none; }  
  </style>
  <script type="text/javascript">


     function GetNameClient() {
//          var noteid = "1sabika";
          var noteid = event.target.id;
          var note_id = noteid;
          PageMethods.GetNameServer(note_id, On_Success, On_Failure)
      }
      function On_Success(result) {
          var initial = document.getElementById('lblnotescart').value;
          var initnum = parseInt(initial, 10);
          var finalnum = initnum + 1;
          document.getElementById('lblnotescart').value = finalnum;
      alert("Successfully Added");
  }
  function On_Failure(error) {
      alert("Addition Unsuccessful");
  }
  </script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<form id="FORM1" runat="server">
<asp:ScriptManager ID="ScripManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>
<div class="wrapper">

  <header class="main-header">

    <!-- Logo -->
    <a href="DashBoard.aspx" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>ADH</b></span>
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
                          <asp:Image ID="aspimguser1" runat="server" CssClass="img-circle" />
                       <%-- <img id="imguser1" runat="server" class="img-circle" alt="User Image">--%>
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
                          <asp:Image ID="aspimguser2" runat="server" CssClass="img-circle" />
                       <%-- <img id="imguser2" runat="server" class="img-circle" alt="User Image">--%>
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
                <asp:Image ID="aspimguser3" runat="server" CssClass="user-image" />
            <%--  <img id="imguser3" runat="server" class="user-image" alt="User Image">--%>
              <span class="hidden-xs"><asp:Label ID="lblname2" runat="server" Font-Bold="true"></asp:Label></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                   <asp:Image ID="aspimageuser5" runat="server" CssClass="user-image" />
              <%--  <img id="imguser5" runat="server" class="img-circle" alt="User Image" />--%>

                <p>
                  <asp:Label ID="lblname" runat="server" Font-Bold="true"></asp:Label>
                  <small>Member since Nov. 2012</small>
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
             <asp:Image ID="aspimageuser4" runat="server" CssClass="user-image" />
         <%-- <img id="imguser4" runat="server" class="img-circle" alt="User Image">--%>
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
        <li class="active">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
          </a>
         </li>
          
           
           <li><a href="Profile.aspx"><i class="fa fa-circle-o"></i> <span>Profile</span></a></li>
             <li><a href="MyEx.aspx"><i class="fa fa-circle-o"></i> <span>My Excercises</span></a></li>
              <li><a href="Mycom.aspx"><i class="fa fa-circle-o"></i> <span>My Community</span></a></li>
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
        Dashboard
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
       
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
              <span class="info-box-number"><asp:Label ID="lblstrdt" runat="server" Font-Bold="true"></asp:Label></span>
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
              <span class="info-box-number"><asp:Label ID="lblsess" runat="server" Font-Bold="true"></asp:Label></span>
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
              <span class="info-box-number"><asp:Label ID="lblsesspend" runat="server" Font-Bold="true"></asp:Label></span>
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
              <span class="info-box-number"><asp:Label ID="lblextime" runat="server" Font-Bold="true"></asp:Label></span>
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
              <h3 class="box-title"><STRONG>MOTIVATIONAL QUOTES</STRONG></h3>
</div>
            
			
            <!-- /.box-header -->
            <div class="box-body">
            
                <div class="col-md-12">
                
                     <div class="box-tools pull-center">
               
            <!-- /.box-header -->
             <div class="col-md-12" align="center">
                 <section class="main">  
           <div class="mb-wrap mb-style-2">  
        <blockquote>  
          <p> <asp:Label ID="lblqt" runat="server"></asp:Label></p>
        </blockquote>
      </div><!--#mb-wrap-->
                    

</section>
<div align="center">


                  </div>
                  <!-- /.chart-responsive -->
                </div>
                         </div>
                    </div>
                </div>
              </div>
               <div class="row">
        <div class="col-md-12">
          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title"><STRONG>VIDEOS</STRONG></h3>
</div>
            
			
            <!-- /.box-header -->
            <div class="box-body">
            
                <div class="col-md-12">
                
                     <div class="box-tools pull-center">
               
            <!-- /.box-header -->
             <div class="col-md-12" align="center">
       
                  <div class="col-md-12">
	<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vSANaw7ZbPlRBvoYsXeLxojgHYf3bPwfsbLRWpGUjXqJCp9kE4AZk2m2OIFApn3U9dKa08k_ZotGN8B/embed?start=false&loop=false&delayms=5000" frameborder="0" width="640" height="389" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>
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
                 <!-- /.col -->
                <div class="row">
        <div class="col-md-12">
          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title"><STRONG>VIDEOS</STRONG></h3>
</div>
            
			
            <!-- /.box-header -->
            <div class="box-body">
            
                <div class="col-md-12">
                
                     <div class="box-tools pull-center">
               
            <!-- /.box-header -->
             <div class="col-md-12" align="center">
        <div class="col-md-6">
			<iframe width="500" height="315" src="https://www.youtube.com/embed/5VqSrFGyOF0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			</div>
                  <div class="col-md-6">
		<iframe width="500" height="315" src="https://www.youtube.com/embed/0GkA21ngLG0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>	</div>
               <%--   <div class="col-md-4">
			<iframe width="500" height="315" src="https://www.youtube.com/embed/5VqSrFGyOF0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			</div>--%>
			

              
            
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
    <strong>Copyright &copy; 2016 <a href="Default.aspx">NC</a>.</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
  

<!-- ./wrapper -->

<script type="text/javascript">
    $(function () {
        $(".demo1").bootstrapNews({
            newsPerPage: 5,
            autoplay: true,
            pauseOnHover: true,
            direction: 'up',
            newsTickerInterval: 4000,
            onToDo: function () {
                //console.log(this);
            }
        });

        $(".demo2").bootstrapNews({
            newsPerPage: 5,
            autoplay: true,
            pauseOnHover: 'true',
            navigation: true,
            direction: 'down',
            newsTickerInterval: 2500,
            onToDo: function () {
                //console.log(this);
            }
        });



        $("#demo3").bootstrapNews({
            newsPerPage: 3,
            autoplay: false,

            onToDo: function () {
                //console.log(this);
            }
        });
    });

    $(function () {
        $('.includeheader').load("header.html");
    });
</script>
  <script src="Scripts/jquerysession.js"></script>
<!-- jQuery 2.2.0 -->
<script src="plugins/jQuery/jQuery-2.2.0.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- SlimScroll 1.3.0 -->
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- ChartJS 1.0.1 -->
<script src="plugins/chartjs/Chart.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard2.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
    <script src="js/quote.js" type="text/javascript"></script>
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


  <script src="Scripts/jquery.media.js" type="text/javascript"></script>
   <script src="Scripts/jquery.metadata.js" type="text/javascript"></script>
</form>

</body>
</html>
