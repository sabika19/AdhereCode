using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;
using MySql.Data.MySqlClient;

namespace MyWebsite
{
    public partial class Default : System.Web.UI.Page

    {
        private MySqlConnection connection;
        private string server;
        private string database;
        private string uid;
        private string password;



        MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
          
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session.Clear();
            //Session.Abandon();
            
        }
        private void Initialize()
        {
          
        }
        protected void btnlogin_click(object sender, EventArgs e)
        {
            con.Open();
      
            MySqlCommand cmd = new MySqlCommand(@"select * from user_profile where username='"+txtuser.Text+"' and password='"+txtpwdlogin.Text+"'", con);
            MySqlDataReader dr = null;
            dr = cmd.ExecuteReader();
            if (!@dr.Read())
            {
                lblerror.Text = "Invalid Credentials.";
               // modal.Attributes.Add("style","display:block");
              
                return;
            }
            else
            {
                Session["username"] = (dr["username"].ToString());
                Session["name"] = (dr["name"].ToString());
                Session["mob"] = (dr["mob"].ToString());
                Session["userid"] = (dr["id"].ToString());
                Session["pic"] = (dr["pic"].ToString());
                Response.Redirect("NewDAshBoard.aspx", false);
                return;
            }
            
            dr.Close();
            dr.Dispose();
            con.Close();
            con.Dispose();
        }
        public byte[] ImageToByteArray(System.Drawing.Image imageIn)
        {
            using (var ms = new MemoryStream())
            {
                imageIn.Save(ms, imageIn.RawFormat);
                return ms.ToArray();
            }
        }
        protected void btnregister_click(object sender, EventArgs e)
        {
            con.Open();
            MySqlTransaction trans = con.BeginTransaction();
            try
            {
                MySqlCommand cmdchck = new MySqlCommand(@"select * from user_profile where username='" + txtusernew.Text + "'", con);
                MySqlDataReader msdr = cmdchck.ExecuteReader();
                if(!@msdr.Read())
                {
                    msdr.Close();
                    msdr.Dispose();
                    MySqlCommand cmd = new MySqlCommand(@"insert into user_profile(name,username,mob,password) values('" + txtname.Text + "','" + txtusernew.Text + "','" + txtmob.Text + "','" + txtpwd.Text + "')", con, trans);
                    if (cmd.ExecuteNonQuery().Equals(1))
                    {
                        MySqlCommand cmd1 = new MySqlCommand(@"insert into user_det(username) values('" + txtusernew.Text + "')", con, trans);
                        cmd1.ExecuteNonQuery();
                        Session["username"] = txtusernew.Text;
                        Session["name"] = txtname.Text;
                        Session["mob"] = txtmob.Text;
                        Session["userid"] = txtusernew.Text;
                        trans.Commit();
                        Response.Redirect("Profile.aspx", false);
                    }
                }
                else
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Username already exists')", true);
                    lblerrorreg.Text = "Select Another Username";
                    return;
                }
            }
            catch(Exception ex)
            {
                trans.Rollback();
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Please Try Again!')", true);
                lblerrorreg.Text = ex.ToString();
                return;
            }
            con.Close();
            con.Dispose();
        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {

        }
    }
}