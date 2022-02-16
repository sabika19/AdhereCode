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
using System.Text;
using MySql.Data.MySqlClient;
namespace MyWebsite
{
    public partial class NewDAshBoard : System.Web.UI.Page
    {
       
       
        public void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Default.aspx", false);
                return;
            }
            if (!IsPostBack)
            {
              
                lblname.Text = Session["name"].ToString();
                lblname1.Text = Session["name"].ToString();
                lblname2.Text = Session["name"].ToString();
                //lblmsg.Visible = false;
                MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());

                con.Open();
                MySqlCommand cmd = new MySqlCommand(@"select a.*,b.* from user_profile a inner join user_det b on a.username=b.username where a.username='"+Session["username"]+"'",con);
                //cmd.Parameters.AddWithValue("@username", MySqlDbType.VarChar).Value = Session["username"].ToString();
                MySqlDataReader sdr = cmd.ExecuteReader();
                if(@sdr.Read())
                {
                    byte[] bytes = (byte[])sdr["pic"];
                    string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
                    aspimguser1.ImageUrl = "data:image/png;base64," + base64String;
                    aspimguser2.ImageUrl = aspimguser1.ImageUrl;
                    aspimguser3.ImageUrl = aspimguser1.ImageUrl;
                    aspimageuser4.ImageUrl = aspimguser1.ImageUrl;
                    aspimageuser5.ImageUrl = aspimguser1.ImageUrl;
                    lblstrdt.Text = sdr["datereg"].ToString();
                    lblsess.Text = "10";
                    lblsesspend.Text = "3";
                    lblextime.Text = sdr["ex_time"].ToString() ;
                }
                sdr.Close();
                sdr.Dispose();
                int randnum = RandomNumber(1,32);
                string qid = "Q" + randnum;
                MySqlCommand cmdqt = new MySqlCommand(@"select qt from quotes where q_id='"+ qid+"'", con);
            
                MySqlDataReader sdrqt = cmdqt.ExecuteReader();
                if (@sdrqt.Read())
                {
                    lblqt.Text = sdrqt["qt"].ToString();
                }
                @sdrqt.Close();
                @sdrqt.Dispose();
                MySqlCommand cmdmsg = new MySqlCommand(@"select * from tbl_msg where tomsg='"+ Session["username"] + "' and rd is null", con);
                MySqlDataReader msdr = cmdmsg.ExecuteReader();

                if (!@msdr.Read())
                    imgmsg.Visible = false;
                else
                    imgmsg.Visible = true;

                msdr.Close();
                msdr.Dispose();
                con.Close(); 
                con.Dispose();
            }

            lables();
            
        }
        public int RandomNumber(int min, int max)
        {
            Random random = new Random();
            return random.Next(min, max);
        }
        protected void lables()
        {
            
          
        }
        protected string GetIPAddress()
        {
            System.Web.HttpContext context = System.Web.HttpContext.Current;
            string ipAddress = context.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (!string.IsNullOrEmpty(ipAddress))
            {
                string[] addresses = ipAddress.Split(',');
                if (addresses.Length != 0)
                {
                    return addresses[0];
                }
            }

            return context.Request.ServerVariables["REMOTE_ADDR"];
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
        }
        protected void btnBuy_Click(object sender, EventArgs e)
        {
            Response.Redirect("YourCart.aspx");
        }
  
        public void BindData()
        {
            
        }
        protected void AddCart(string id)
        {
            MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["constring"].ToString());
            con.Open();
            string note_id = id;
            string ipath = null;
            string title = null;
            string author = null;
            string ppath = null;
            string price = "0";
            string ip = GetIPAddress();
            MySqlCommand cmd1 = new MySqlCommand(@"select count(slno) from tbl_cart where cart_username='" + Session["username"].ToString() + "'", con);
            int cart_idnum = (int)cmd1.ExecuteScalar();
            string cart_id = Session["userid"].ToString() + note_id + cart_idnum.ToString();
            MySqlCommand cmd11 = new MySqlCommand(@"select * from tbl_seller where note_id='" + id + "'", con);
            MySqlDataReader dr11 = cmd11.ExecuteReader();
            if (@dr11.Read())
            {
                price = (dr11["price"].ToString());
                ipath = (dr11["ipath"].ToString());
                ppath = (dr11["ppath"].ToString());
                title = (dr11["title"].ToString());
                author = (dr11["author"].ToString());
            }
            dr11.Close();
            dr11.Dispose();
            MySqlCommand cmd = new MySqlCommand(@"insert into tbl_cart(cart_id,note_id,ipath,title,author,price,cart_username,ip_cart,ppath,date_cart) values(@cart_id,@note_id,@ipath,@title,@author,@price,@cart_username,@ip_cart,@ppath,@date_cart)", con);
            cmd.Parameters.AddWithValue("@cart_id", MySqlDbType.VarChar).Value = cart_id;
            cmd.Parameters.AddWithValue("@note_id", MySqlDbType.VarChar).Value = note_id;
            cmd.Parameters.AddWithValue("@ipath", MySqlDbType.VarChar).Value = ipath;
            cmd.Parameters.AddWithValue("@title", MySqlDbType.VarChar).Value = title;
            cmd.Parameters.AddWithValue("@author", MySqlDbType.VarChar).Value = author;
            //  cmd.Parameters.AddWithValue("@owner", SqlDbType.VarChar).Value = "";
            cmd.Parameters.AddWithValue("@price", MySqlDbType.VarChar).Value = price;
            cmd.Parameters.AddWithValue("@cart_username", MySqlDbType.VarChar).Value = Session["username"].ToString();
            cmd.Parameters.AddWithValue("@ip_cart", MySqlDbType.VarChar).Value = ip;
            // cmd.Parameters.AddWithValue("@file_name", SqlDbType.VarChar).Value = "";
            cmd.Parameters.AddWithValue("@ppath", MySqlDbType.VarChar).Value = ppath;
            cmd.Parameters.AddWithValue("@date_cart", MySqlDbType.Date).Value = DateTime.Now.ToShortDateString();
            cmd.ExecuteNonQuery();
            con.Close();
           // lables();
        }
       
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            BindData();
           

        }
        [System.Web.Services.WebMethod]
        public static String GetNameServer(string noteid)
        {
           NewDAshBoard foo = new NewDAshBoard();
           foo.AddCart(noteid);
           string name = noteid;
           return name;
          
        }
        protected void btnCart_Click(object sender, EventArgs e)
        {


        }
        protected void OnPaging1(object sender, GridViewPageEventArgs e)
        {
            BindData();
          
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}