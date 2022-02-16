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
    public partial class MyEx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Default.aspx", false);
                return;
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
                con.Open();
                MySqlCommand cmd = new MySqlCommand(@"insert into feedback(username,datefeed,ex_comp,ex_feel,ex_timemany,ex_timemuch,ex_rep,ex_int,ex_stop)values('" + Session["username"] + "',getdate(),'" + chcklstcomp.SelectedValue + "','" + chcklstfeel.SelectedValue + "','" + chcklsttimemany.SelectedValue + "','" + chcklsttimemuch.SelectedValue + "','" + chcklstrep.SelectedValue + "','" + chcklstint.SelectedValue + "','" + txtstop.InnerText + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                con.Dispose();
            }
            catch
            {
                lblMsg.Text = "Try Again";
            }
        }
    }
}