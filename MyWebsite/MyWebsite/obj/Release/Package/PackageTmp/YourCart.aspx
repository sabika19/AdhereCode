<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YourCart.aspx.cs" Inherits="MyWebsite.YourCart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>NC | DASHBOARD</title>
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
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

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
</head>
<body class="hold-transition skin-blue sidebar-mini">
<form id="FORM1" runat="server">
<div class="wrapper">

  <header class="main-header">

    <!-- Logo -->
    <a href="DashBoard.aspx" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>NC</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>NOTES</b>CART</span>
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
        <li class="active">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>My Cart</span>
          </a>
         </li> 
             <li><a href="NewDAshBoard.aspx"><i class="fa fa-circle-o"></i> <span>Dashboard</span></a></li>
             <li><a href="UploadNotes.aspx"><i class="fa fa-circle-o"></i> <span>Upload Notes</span></a></li>
              <li><a href="MyNotes.aspx"><i class="fa fa-circle-o"></i> <span>My Notes</span></a></li>
                <li><a href="Profile.aspx"><i class="fa fa-circle-o"></i> Profile</a></li>
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
            <span class="info-box-icon bg-aqua"><i class="ion ion-ios-cloud-upload-outline"></i></span>

            <div class="info-box-content">
              <span class="info-box-text"><strong>UPLOADED</strong></span>
              <span class="info-box-number"><asp:Label ID="lblnotesup" runat="server" Font-Bold="true"></asp:Label></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-red"><i class="ion ion-ios-book-outline"></i></span>

            <div class="info-box-content">
              <span class="info-box-text"><strong>SOLD</strong></span>
              <span class="info-box-number"><asp:Label ID="lblnotessold" runat="server" Font-Bold="true"></asp:Label></span>
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
            <span class="info-box-icon bg-yellow"><i class="ion ion-ios-cloud-download-outline"></i></span>

            <div class="info-box-content">
              <span class="info-box-text"><strong>BOUGHT</strong></span>
              <span class="info-box-number"><asp:Label ID="lblnotesbought" runat="server" Font-Bold="true"></asp:Label></span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="info-box">
           <a href="YourCart.aspx">    <span class="info-box-icon bg-green"><i class="ion ion-ios-cart-outline"></i></span></a>

            <div class="info-box-content">
           <span class="info-box-text"><strong>CART</strong> </span>
              <span class="info-box-number"><asp:Label ID="lblnotescart" runat="server" Font-Bold="true"></asp:Label></span>
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
              <h3 class="box-title"><STRONG>YOUR CART</STRONG></h3>
</div>
            
			
            <!-- /.box-header -->
            <div class="box-body">
            
                <div class="col-md-12">
                
                     <div class="box-tools pull-left">
               
            <!-- /.box-header -->
            
          
              

 <div id="divbtn" runat="server">
 </div>
              
             <br />
             <asp:Label ID="lblmsg" runat="server" Font-Bold="True"></asp:Label>
            
   
   <div id = "dvGrid" style ="padding:10px;width:550px">
   <div id="divtable" runat="server" align="center">
              <asp:GridView ID="GridView1" runat="server" Width="180%" align="left" CssClass="mGrid"
            AutoGenerateColumns="false" Font-Names="Arial" RowStyle-VerticalAlign="Top"
            Font-Size="11pt" 
    AllowPaging="true"  
     gridlines="None"  
    PagerStyle-CssClass="pgr"  
    AlternatingRowStyle-CssClass="alt"
            valign="center"
          OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  BorderStyle="None" >
<Columns>
<asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "">
    <ItemTemplate>
       <asp:Image ID="imgnote" runat="server" Width="100px" Height="100px" />
    </ItemTemplate>
</asp:TemplateField>

<asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "TITLE">
    <ItemTemplate>
        <asp:Label ID="lblTITLE" runat="server"
        Text='<%# Eval("TITLE")%>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>

<asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "AUTHOR">
    <ItemTemplate>
        <asp:Label ID="lblAUTHOR" runat="server"
        Text='<%# Eval("AUTHOR")%>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>

<asp:TemplateField ItemStyle-Width = "30px"  HeaderText = "PRICE">
    <ItemTemplate>
      <asp:Label ID="lblPRICE" runat="server"
        Text='<%# Eval("PRICE")%>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>
 <asp:TemplateField ItemStyle-Width="200px" HeaderText="">
                    <ItemTemplate>
                   <asp:hyperlink id="hyplnk" Target="_blank" text="PREVIEW" runat="server" ForeColor="Cyan"></asp:hyperlink>
                    </ItemTemplate>

                </asp:TemplateField>
<asp:TemplateField>
 
    <ItemTemplate>
        <asp:LinkButton ID="lnkRemove" runat="server"
            CommandArgument ='<%# Eval("CART_ID")%>'
         OnClientClick = "return confirm('Do you want to delete?')"
        Text = "Delete" OnClick = "RemoveItem"></asp:LinkButton>
    </ItemTemplate>
   


</asp:TemplateField>
</Columns>
</asp:GridView>
                </div>
              
             
            
            </div>
          <table>  
          <tr>
           <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td>
               <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td>
                <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td>
                 <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td>
                  <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td>
            
          <td>           <asp:Label ID="lbltotal" runat="server" Text="TOTAL : " Font-Bold="true"></asp:Label>
          </td>
 
            </tr>
            <tr></tr>
            <tr>
            <td align="left">
           <asp:Button ID="Button1" runat="server" CssClass="btn btn-block btn-info" Text="<< SEARCH FOR MORE NOTES" OnClick="btnNote1_Click" Font-Bold="true" width="200px" />
              </td>
              <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td>
               <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td>
                <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td>
                 <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td>
                  <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td> <td>&nbsp;</td><td>&nbsp;</td>
              <td align="right">
      <asp:Button ID="btnNote" runat="server" CssClass="btn btn-block btn-info" Text="CHECK OUT >>" OnClick="btnNote_Click" Font-Bold="true" width="200px" />
                </td>
                 </tr>
                   </table>
                  <div class="chart">
                    <!-- Sales Chart Canvas -->
                
                  <!-- /.chart-responsive -->
                </div>
                <!-- /.col -->
               
                <!-- /.col -->
            
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
              <h3 class="box-title"><STRONG>WHAT'S NEW @ NC</STRONG></h3>
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
             <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
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
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-user bg-yellow"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

                <p>New phone +1(800)555-1234</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

                <p>nora@example.com</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-file-code-o bg-green"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                <p>Execution time 5 seconds</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="label label-danger pull-right">70%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Update Resume
                <span class="label label-success pull-right">95%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Laravel Integration
                <span class="label label-warning pull-right">50%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Back End Framework
                <span class="label label-primary pull-right">68%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->

      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Allow mail redirect
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Other sets of options are available
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Expose author name in posts
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Allow the user to show his name in blog posts
            </p>
          </div>
          <!-- /.form-group -->

          <h3 class="control-sidebar-heading">Chat Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Show me as online
              <input type="checkbox" class="pull-right" checked>
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Turn off notifications
              <input type="checkbox" class="pull-right">
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Delete chat history
              <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
            </label>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>

</div>
<!-- ./wrapper -->

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
</form>
</body>
</html>

