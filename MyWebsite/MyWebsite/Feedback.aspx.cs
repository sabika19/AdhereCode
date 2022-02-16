using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.UI.HtmlControls;
using MySql.Data.MySqlClient;

namespace MyWebsite
{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Default.aspx", false);
                return;
            }
            try
            {
                MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
                con.Open();
                MySqlCommand cmd = new MySqlCommand(@"select * from tbl_msg where tomsg='" + Session["username"] + "'", con);
                cmd.ExecuteNonQuery();
                try
                {
                    MySqlCommand cmdread = new MySqlCommand(@"update tbl_msg set rd='Y' where rd is null and where tomsg='" + Session["username"] + "'", con);
                    cmdread.ExecuteNonQuery();
                }
                catch
                {

                }
                con.Close();
                con.Dispose();

            }
            catch
            {

            }
        }
        protected void btnNote_Click(object sender, EventArgs e)
        {
           


        }
    }
}