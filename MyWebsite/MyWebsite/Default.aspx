<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyWebsite.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">



<head>
     <!-- Site made with Mobirise Website Builder v2.8.7, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v2.8.7, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="images/adhere.png" type="image/x-icon">
  <meta name="description" content="">
  <!--<link type="text/css" rel="stylesheet" href="login-popup/css/style.css" />-->


<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" />


<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" />
<link type="text/css" rel="stylesheet" href="css/style.css" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:700,400&amp;subset=cyrillic,latin,greek,vietnamese">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/mobirise/css/style.css">
  <link rel="stylesheet" href="assets/mobirise-slider/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Landing Page | Adhere</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/landing-page.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<form id="form1" runat="server" >
<section class="engine"><a rel="nofollow" href="#">Adhere
</a></section>
<section class="mbr-navbar mbr-navbar--freeze mbr-navbar--absolute mbr-navbar--transparent mbr-navbar--sticky mbr-navbar--auto-collapse" id="ext_menu-8">
    <div class="mbr-navbar__section mbr-section">
        <div class="mbr-section__container container">
            <div class="mbr-navbar__container">
                <div class="mbr-navbar__column mbr-navbar__column--s mbr-navbar__brand">
                    <span class="mbr-navbar__brand-link mbr-brand mbr-brand--inline">
                        <span class="mbr-brand__logo"><a href="#"><img class="mbr-navbar__brand-img mbr-brand__img" src="images/adhere.png" alt=""></a></span>
                        <span class="mbr-brand__name"><a class="mbr-brand__name text-danger" href="#"></a></span>
                    </span>
                </div>
                <div class="mbr-navbar__hamburger mbr-hamburger text-white"><span class="mbr-hamburger__line"></span></div>
                <div class="mbr-navbar__column mbr-navbar__menu">
                    <nav class="mbr-navbar__menu-box mbr-navbar__menu-box--inline-right">
                        <div class="mbr-navbar__column"><ul class="mbr-navbar__items mbr-navbar__items--right mbr-buttons mbr-buttons--freeze mbr-buttons--right btn-decorator mbr-buttons--active"> 
                           <!-- <li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="index.html"><strong>ABOUT US</strong></a></li>-->
                             <li class="mbr-navbar__item"><a id="modal_trigger" href="#modal" class="mbr-buttons__link btn text-white" ><strong>SIGN UP/LOG IN</strong></a></li>
                            <!--   <li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="page13.html"><strong>SERVICES</strong></a></li> -->
                           <li class="mbr-navbar__item"><a class="mbr-buttons__link btn text-white" href="page2.html"><strong>CONTACT</strong></a></li>  </ul></div>
                        <div class="mbr-navbar__column"><ul class="mbr-navbar__items mbr-navbar__items--right mbr-buttons mbr-buttons--freeze mbr-buttons--right btn-inverse mbr-buttons--active"></ul></div>
						<div id="modal" class="popupContainer" style="display:none;" runat="server">
		<header class="popupHeader">
			<span class="header_title">Login</span>
			<span class="modal_close"><i class="fa fa-times"></i></span>
		</header>
		
		<section class="popupBody">
			<!-- Social Login -->
			<div class="social_login" id="social" runat="server">
			<%--	<div class="">
					<a href="#" class="social_box fb">
						<span class="icon"><i class="fa fa-facebook"></i></span>
						<span class="icon_title">Connect with Facebook</span>
						
					</a>

					<a href="#" class="social_box google">
						<span class="icon"><i class="fa fa-google-plus"></i></span>
						<span class="icon_title">Connect with Google</span>
					</a>
				</div>--%>

				<div class="centeredText">
					<span>Log In OR Register</span>
				</div>

				<div class="action_btns">
					<div class="one_half"><a href="#" id="login_form" class="btn">Login</a></div>
					<div class="one_half last"><a href="#" id="register_form" class="btn">Register</a></div>
				</div>
			</div>

			<!-- Username & Password Login form -->
			<div class="user_login" id="log" runat="server">
				
					<label>Username</label>
                    
					  <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="login" ControlToValidate="txtuser" Text="ENTER USER NAME!" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
					
					<br />

					<label>Password</label>
					  <asp:TextBox ID="txtpwdlogin" runat="server" TextMode="Password"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="login" ControlToValidate="txtpwdlogin" Text="ENTER USER NAME!" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
					
					<br />

				<%--	<div class="checkbox">
						<input id="remember" type="checkbox" />
						<label for="remember">Remember me on this computer</label>
					</div>--%>

					<div class="action_btns">
						<div class="one_half"><a href="#" class="btn back_btn"><i class="fa fa-angle-double-left"></i> Back</a></div>
                        <div class="one_half last"><asp:Button ID="btnlogin" Text="LOG IN" runat="server" OnClick="btnlogin_click" class="btn btn_red" ValidationGroup="login" /></div>
					<!--	<div class="one_half last"><a class="btn btn_red">Login</a></div>-->
					</div>
			<asp:Label ID="lblerror" runat="server" Font-Bold="true" ForeColor="red"></asp:Label>
			<%--	<a href="#" class="forgot_password">Forgot password?</a>--%>
			</div>

			<!-- Register Form -->
			<div class="user_register">
				
					<label>Full Name</label>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
					<asp:RequiredFieldValidator ID="rqname" runat="server" ControlToValidate="txtname" ValidationGroup="register" Text="ENTER NAME!" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
					<br />
                    <label>User Name</label>
                    <asp:TextBox ID="txtusernew" runat="server"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="register" ControlToValidate="txtusernew" Text="ENTER USER NAME!" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
					
					<br />
					<label>Phone Number</label>
					  <asp:TextBox ID="txtmob" runat="server" maxlength="10"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="register" ControlToValidate="txtmob" Text="ENTER MOBILE NUMBER!" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
					
					<br />

					<label>Password</label>
				    <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="register" ControlToValidate="txtpwd" Text="ENTER PASSWORD!" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
					
					<br />
                    <label>Re-Enter Password</label>
					  <asp:TextBox ID="txtpwd1" runat="server" TextMode="Password"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpwd1" Text="ENTER PASSWORD AGAIN!" Font-Bold="true" ForeColor="Red" ValidationGroup="register"></asp:RequiredFieldValidator>
					
					

					<div class="action_btns">
						<div class="one_half"><a href="#" class="btn back_btn"><i class="fa fa-angle-double-left"></i> Back</a></div>
                          <div class="one_half last"><asp:Button ID="btnregister" Text="REGISTER" runat="server" OnClick="btnregister_click" class="btn btn_red" ValidationGroup="register" /></div>
				
						
					</div>
					<asp:Label ID="lblerrorreg" runat="server" Font-Bold="true" ForeColor="red"></asp:Label>
			</div>
		</section>
	</div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</section>

  
 
    <div class="intro-header">
        <div class="container">

            <div class="row">
                <div class="col-lg-12">
                  
                    <div class="intro-message">
                        
                        <h1>ADHERE</h1>
                           <hr class="intro-divider">
                        <h2><font style="color:#FFC300">AD</font>herence to <font style="color:#FFC300">H</font>ome <font style="color:#FFC300">E</font>xcercises & <font style="color:#FFC300">RE</font>habilitation </h2>
					<div align="center">
	<%--<form method="get" action="http://www.mysite.com/search.php"> --%>
<table cellpadding="0px" cellspacing="0px"> 
<tr> 
<td style="border-style:solid none solid solid;border-color:#4B7B9F;border-width:0px;"><h3> After Stroke</h3>
</td>

</tr>
</table>
<%--</form>--%>
</div>
                     
                       
                    </div>
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.intro-header -->

    <!-- Page Content -->

	<a  name="services"></a>
    <div class="content-section-a">

        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">Stroke</h2>
                    <p class="lead">Stroke is a medical condition in which poor blood flow to the brain results in cell death. Stroke if not treated timely may lead to long-term disability.</p>
                </div>
                <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                    <img class="img-responsive" src="images/stroke.jpg" alt="stroke">
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-a -->

    <div class="content-section-b">

        <div class="container">

            <div class="row">
                <div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">Stroke Rehabilitation</h2>
                    <p class="lead">Rehabilitation after stroke is important to optimize recovery and function. Every person with stroke should do regular exercises and physical activity for better recovery.</p>
                </div>
                <div class="col-lg-5 col-sm-pull-6  col-sm-6">
                    <img class="img-responsive" src="images/rehab.jpg" alt="rehab" height="200px">
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-b -->

    <div class="content-section-a">

        <div class="container">

            <div class="row">
                <div class="col-lg-5 col-sm-6">
                    <hr class="section-heading-spacer">
                    <div class="clearfix"></div>
                    <h2 class="section-heading">Adhere</h2>
                    <p class="lead">Adhere is a medium to help you do your exercises regularly at home and live a healthy life after stroke.</p>
                </div>
                <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                    <img class="img-responsive" src="images/adhere.png" alt="adhere">
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.content-section-a -->

	<a  name="contact"></a>
    <div class="banner">

        <div class="container">

            <div class="row">
                <div class="col-lg-6">
                    <h2>Contact Us</h2>
                </div>
                <div class="col-lg-6">
                    <ul class="list-inline banner-social-buttons">
                        <li>
                            <a href="https://twitter.com/unit_ccsrr" class="btn btn-default btn-lg" target="_blank"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">Twitter</span></a>
                        </li>
                      
                        <li>
                            <a href="#" class="btn btn-default btn-lg"><i class="fa fa-envelope fa-fw"></i> <span class="network-name">Mail</span></a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.banner -->

    <!-- Footer -->
    
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                 This website is affiliated to Centre for Comprehensive Stroke Rehabilitation and Research (CCSRR), Manipal Academy of Higher Education
                    <p class="copyright text-muted small">Copyright &copy; Adhere 2018. All Rights Reserved</p>
                </div>
            </div>
        </div>
    </footer>
<script type="text/javascript">
  
        $("#modal_trigger").leanModal({ overlay: 0.6, closeButton: ".modal_close" });

        $(function () {
            // Calling Login Form
            $("#login_form").click(function () {
                $(".social_login").hide();
                $(".user_login").show();
                return false;
            });

            // Calling Register Form
            $("#register_form").click(function () {
                $(".social_login").hide();
                $(".user_register").show();
                $(".header_title").text('Register');
                return false;
            });

            // Going back to Social Forms
            $(".back_btn").click(function () {
                $(".user_login").hide();
                $(".user_register").hide();
                $(".social_login").show();
                $(".header_title").text('Login');
                return false;
            });

        })
   
</script>
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
 <script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/smooth-scroll/SmoothScroll.js"></script>
  <script src="assets/bootstrap-carousel-swipe/bootstrap-carousel-swipe.js"></script>
  <script src="assets/mobirise/js/script.js"></script>
 
  </form>
</body>

</html>

