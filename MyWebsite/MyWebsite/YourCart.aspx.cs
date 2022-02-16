using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace MyWebsite
{
    public partial class YourCart : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                imguser1.Src = Session["pic"].ToString();
                imguser2.Src = imguser1.Src;
                imguser3.Src = imguser1.Src;
                imguser4.Src = imguser1.Src;
                imguser5.Src = imguser1.Src;
            }
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());

            con.Open();
            string notessold = "0";
            string notesuploaded = "0";
            string notesbought = "0";
            string cart = "0";
            SqlCommand cmd1 = new SqlCommand(@"select count(*) from tbl_seller where username='" + Session["username"].ToString() + "'", con);
            int x = (int)cmd1.ExecuteScalar();
            notesuploaded = x.ToString();
            if (x != 0)
            {
                SqlCommand cmd2 = new SqlCommand(@"select count(*) from tbl_seller where username='" + Session["username"].ToString() + "' and sold is not null", con);
                int y = (int)cmd2.ExecuteScalar();
                notessold = y.ToString();

            }

            SqlCommand cmd3 = new SqlCommand(@"select count(*) from tbl_buyer where buyer_username='" + Session["username"].ToString() + "'", con);
            int z = (int)cmd3.ExecuteScalar();
            notesbought = z.ToString();

            SqlCommand cmd4 = new SqlCommand(@"select count(*) from tbl_cart where cart_username='" + Session["username"].ToString() + "'", con);
            int z1 = (int)cmd4.ExecuteScalar();
            cart = z1.ToString();
            Session["cart"] = cart.ToString();
            lblnotesup.Text = notesuploaded;
            lblnotessold.Text = notessold;
            lblnotesbought.Text = notesbought;
            lblnotescart.Text = cart;
            con.Close();
            BindData();

        }
        protected void BindData()
        {
           
            con.Open();
            SqlCommand cmd = new SqlCommand(@"select ppath,cart_id,ipath,note_id,title,author,price from tbl_cart where cart_username='" + Session["username"].ToString() + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                string ppath = dt.Rows[i][0].ToString();
                HyperLink lnk = ((HyperLink)GridView1.Rows[i].FindControl("hyplnk"));
                lnk.NavigateUrl = ppath;
                System.Web.UI.WebControls.Image img = ((System.Web.UI.WebControls.Image)GridView1.Rows[i].FindControl("imgnote"));
                img.ImageUrl = dt.Rows[i][2].ToString();
            }
            con.Close();
        }
        protected void RemoveItem(object sender, EventArgs e)
        {
            con.Open();
            LinkButton lnkRemove = (LinkButton)sender;
            string CART_ID = lnkRemove.CommandArgument.ToString();
            SqlCommand cmd = new SqlCommand(@"delete from tbl_cart  where cart_username='" + Session["username"].ToString() + "' and cart_id='"+CART_ID+"'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('RECORD DELETED SUCCESSFULLY!')", true);
            BindData();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnNote_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewDAshBoard.aspx", false);
        }
        protected void btnNote1_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewDAshBoard.aspx", false);
        }
    }
}