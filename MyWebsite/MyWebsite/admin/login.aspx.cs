using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Security.Cryptography;
using System.Web.Security;
using System.Web.SessionState;

namespace MyWebsite
{
    public partial class login : System.Web.UI.Page
    {
        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;

        protected void Page_Init(object sender, EventArgs e)
        {
            // The code below helps to protect against XSRF attacks
            var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            Guid requestCookieGuidValue;
            if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            {
                // Use the Anti-XSRF token from the cookie
                _antiXsrfTokenValue = requestCookie.Value;
                Page.ViewStateUserKey = _antiXsrfTokenValue;
            }
            else
            {
                // Generate a new Anti-XSRF token and save to the cookie
                _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
                Page.ViewStateUserKey = _antiXsrfTokenValue;

                var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue
                };
                if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                {
                    responseCookie.Secure = true;
                }
                Response.Cookies.Set(responseCookie);
            }

            Page.PreLoad += Page_PreLoad;
        }

        protected void Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set Anti-XSRF token
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            }
            else
            {
                // Validate the Anti-XSRF token
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
                }
            }
        }

        public string salted
        {
            get
            {
                return (string)ViewState["salted"] ?? " ";
            }
            set
            {
                ViewState["salted"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            lblMsg.Visible = false;


            if (!IsPostBack)
            {

                Response.CacheControl = "No-cache";
                Response.Cache.SetNoStore();
                Label1.Visible = false;
                Session.Clear();
                Session.Abandon();

                Generate_newSalt();
                //Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId", ""));
                //string salt = CreateSalt(5);

                ////Save the salt in session variable  
                //salted = salt.ToString();

                ////Add the JS function call to button with a parameter 
                //btnlogin.Attributes.Add("onclick", "return HashPwdwithSalt('" + salt.ToString() + "');");
                //btnlogin.Attributes.Add("onclick", "return GeneratePwd();");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "clearHistory", "ClearHistory();", true);
                txtUser1.Attributes.Add("autocomplete", "off");
                txtpwd.Attributes.Add("autocomplete", "off");
            }
            else
            {

            }
        }
        private void Generate_newSalt()
        {
            string salt = CreateSalt(5);

            //Save the salt in session variable  
            salted = salt.ToString();

            //Add the JS function call to button with a parameter 
            btnlogin.Attributes.Add("onclick", "return HashPwdwithSalt('" + salt.ToString() + "');");
        }
        private string CreateSalt(int size)
        {
            RNGCryptoServiceProvider rng = new RNGCryptoServiceProvider();
            byte[] buff = new byte[size];
            rng.GetBytes(buff);
            return Convert.ToBase64String(buff);
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {

            captcha1.ValidateCaptcha(TextBox1.Text.Trim());
            if (captcha1.UserValidated)
            {
                Label1.Visible = false;
              //  string orpwd = "adminAdh$18";
                string pwd = "b42dc152de90e58421becb48f5630eea";
                string hashed_pwd = FormsAuthentication.HashPasswordForStoringInConfigFile(pwd + salted, "md5");
                //  if ((hashed_pwd.ToLower().Equals(txtpwd.Text)) && txtUser1.Text=="admin")
                if (txtpwd.Text== "adminAdh$18" && txtUser1.Text == "admin")

                {
                    Session["admin"] = "admin";
                    Response.Redirect("admndash.aspx", false);

                    return;
                }
                else
                {
                    Label1.ForeColor = System.Drawing.Color.Red;

                    Label1.Text = "InValid Credentials.Try Again.";
                    Label1.Visible = true;
                    return;
                }

            }

            else
            {

                Label1.ForeColor = System.Drawing.Color.Red;

                Label1.Text = "InValid Captcha Characters.Enter Again.";
                Label1.Visible = true;
                return;

            }
        }


    }
}