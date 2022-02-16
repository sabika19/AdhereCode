<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="MyWebsite.login" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="rsv" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script src="Scripts/md5.js"></script>
    <script type="text/javascript">
        function x1()
             {
                var t1 = document.getElementById('txtpwd').value;
                document.getElementById('pwd1').value = t1;
              }
       

        function HashPwdwithSalt(salt)
        {
           
            if (document.getElementById('txtpwd').value != "") {
                 
                document.getElementById('txtpwd').value = hex_md5(document.getElementById('txtpwd').value);

                document.getElementById('txtpwd').value = hex_md5(document.getElementById('txtpwd').value + salt);

            }
           
        }  
    </script>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
 
  <title>ADHERE | Log in</title>
  <!-- Tell the browser to be responsive to screen width -->

  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
     <link rel="shortcut icon" href="../images/adhere.png" type="image/x-icon">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css" />
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" />
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css" />
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
 <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">


  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
  <a href="http://adhere.co.in"><img width="120px" height="110px" src="../images/adhere.png" alt="CBSE"></a>
    </div>
    <div align="center">
    <a href="http://adhere.co.in"><h4><b>ADHERE</b></h4></a>
   <h4><b>Admin Login</b></h4>
  
   </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
   <h4 class="login-box-msg"><b><asp:Label ID="lblMsg" runat="server" Font-Bold="true" ForeColor="Red" Text="LAST DATE OVER"></asp:Label>
       </b></h4>
   <div id="chckdate" runat="server">
    
    <form id="form1" runat="server">
      <div class="form-group has-feedback">
        <asp:TextBox ID="txtUser1"  class="form-control" placeholder="User Name" runat="server"  Maxlength="7"  autocomplete="off" ></asp:TextBox>
         <span class="glyphicon glyphicon-user form-control-feedback"></span>
  <asp:RequiredFieldValidator ID="rquser" runat="server" ControlToValidate="txtUser1" ErrorMessage="Enter Username" Font-Bold="true" ForeColor="Red" ></asp:RequiredFieldValidator>
      </div>
      <div class="form-group has-feedback">
<%--                    <input type="Password" class="form-control" placeholder="Password"  runat="server"  onkeyup="x1()" onkeydown="x1()" onkeypress="x1()" ID="txtpwd" name="txtpwd"/>--%>
        <asp:TextBox ID="txtpwd"  class="form-control" placeholder="Password" 
              type="Password" runat="server" TextMode="Password" onkeyup="x1()" ></asp:TextBox>
       <span class="glyphicon glyphicon-lock form-control-feedback"></span>
   <asp:RequiredFieldValidator ID="rqpass" runat="server" ControlToValidate="txtpwd" ErrorMessage="Enter Username" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
          <asp:TextBox ID="pwd1" runat="server" Text="" style="visibility:hidden" ></asp:TextBox>
      </div>
      <div class="row">
        <div class="col-xs-12">
          <div align="center">
            <rsv:CaptchaControl ID="captcha1" runat="server" CaptchaLength="5" CaptchaHeight="60"
                    CaptchaWidth="200" CaptchaLineNoise="None" CaptchaMinTimeout="5" CaptchaMaxTimeout="240"
                    ForeColor="Red" BackColor="White" CaptchaChars="ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789"
                    FontColor="Red" />  <asp:TextBox ID="TextBox1"  class="form-control" placeholder="Enter Captcha" runat="server"  autocomplete="off" ></asp:TextBox> 
          </div>
        </div>
      
        <!-- /.col -->
        <div class="col-xs-12">
        <br />    <asp:Button class="btn btn-primary btn-block btn-flat" Text="Log In" runat="server" ID="btnlogin" onclick="btnlogin_Click" />
        </div>
        <!-- /.col -->
      </div>
      <asp:Label ID="Label1" runat="server" Font-Bold="True"></asp:Label>
    </form>

    <div class="social-auth-links text-center">
      <p></p>
	 
     </div>
     </div>
    <!-- /.social-auth-links -->
     
    
   

  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 2.2.0 -->
<script src="../plugins/jQuery/jQuery-2.2.0.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="../bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->

<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });
</script>
</body>
</html>
