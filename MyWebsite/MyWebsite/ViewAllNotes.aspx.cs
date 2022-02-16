using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.UI.HtmlControls;

namespace MyWebsite
{
    public partial class ViewAllNotes : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            string searchobj = Session["searchitem"].ToString();

            if (searchobj != "")
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ToString());
                con.Open();
                SqlCommand cmd = new SqlCommand(@"select * from tbl_seller where title like '%" + searchobj + "%' or sub_tag like '%" + searchobj + "%' or grade_tag like '%" + searchobj + "%' ", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                int x2 = dt.Rows.Count;
                int x1 = x2;
                if (dt.Rows.Count != 0)
                {
                    lblcount.Text = dt.Rows.Count.ToString();
             
                    //GridView1.DataSource = dt;
                    //GridView1.DataBind();
                    //GridView1.Visible = true;
                    //for (int i = 0; i < GridView1.Rows.Count; i++)
                    //{
                    //    string ppath = dt.Rows[i][15].ToString();
                    //    HyperLink lnk = ((HyperLink)GridView1.Rows[i].FindControl("hyplnk"));
                    //    lnk.NavigateUrl = ppath;
                    //    System.Web.UI.WebControls.Image img = ((System.Web.UI.WebControls.Image)GridView1.Rows[i].FindControl("imgnote"));
                    //    img.ImageUrl = dt.Rows[i][16].ToString();
                    //}

                    int n = dt.Rows.Count;
                    int rows = 0;
                    int lastrow = 0;
                    if (n % 5 == 0)
                    {
                        rows = (n - n % 5) / 5;
                    }
                    else
                    {
                        rows = ((n - n % 5) / 5);
                        lastrow = n % 5;
                    }

                    var table = new HtmlGenericControl("table");
                    int i = 0;
                    int x = 0;
                    int j = 0;
                    for (i = 0, x = 0; i < rows; i = i + 1, x = x + 5)
                    {
                        var tr = new HtmlGenericControl("tr");
                        var tr2 = new HtmlGenericControl("tr");
                        for (j = x; j < x + 5; j++)
                        {
                            var td = new HtmlGenericControl("td");

                            var td2 = new HtmlGenericControl("td");
                            td.InnerHtml = "<table style='width: 180px; BORDER-RIGHT: #000080 1px solid; BORDER-TOP: #000080 1px solid; BORDER-LEFT: #000080 1px solid; BORDER-BOTTOM: #000080 1px solid' width='100%'><tr><td align='center'><img src='" + dt.Rows[j][16] + "' height='100' width='100' border='0'></td></tr><tr><td align='center'>" + dt.Rows[j][2] + "</td></tr><tr><td align='center'>PRICE : " + dt.Rows[j][11] + "</td></tr><tr><td align='center'><input id='" + dt.Rows[j][15].ToString() + "' runat='server' value='PREVIEW' type='button' class='btnShow' /></td></tr></table>";
                            td2.InnerHtml = "<table><tr><td>&nbsp;&nbsp;&nbsp;</td></tr></table>";
                            tr.Controls.Add(td);
                            tr.Controls.Add(td2);
                            tr2.InnerHtml = "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>";
                        
                        }
                        table.Controls.Add(tr);
                        table.Controls.Add(tr2);
                    }

                    if (n % 5 != 0)
                    {
                        var tr1 = new HtmlGenericControl("tr");
                        int z = 0;
                        if (j != 0)
                        {
                            z = j;
                        }

                        for (int y = 0; y < lastrow; y++, z++)
                        {
                            // Session["preview" + z + ""] = dt.Rows[z][15].ToString();
                            var td2 = new HtmlGenericControl("td");
                            var td1 = new HtmlGenericControl("td");
                            td1.InnerHtml = "<table style='width: 180px; BORDER-RIGHT: #000080 1px solid; BORDER-TOP: #000080 1px solid; BORDER-LEFT: #000080 1px solid; BORDER-BOTTOM: #000080 1px solid' width='100%'><tr><td align='center'><img src='" + dt.Rows[z][16] + "' height='100' width='100' border='0'></td></tr><tr><td align='center'>" + dt.Rows[z][2] + "</td></tr><tr><td align='center'>PRICE : " + dt.Rows[z][11] + "</td></tr><tr><td align='center'>OWNER : " + dt.Rows[z][3] + "</td></tr><tr><td align='center'><input id='" + dt.Rows[z][15].ToString() + "' runat='server' value='PREVIEW NOTE' type='button' class='btnShow' /></td></tr><tr><td align='center'><input id='" + z + "" + dt.Rows[z][3] + "' runat='server' value='VIEW OWNER PROFILE' type='button' class='btnOwner' /></td></tr></table>";
                            td2.InnerHtml = "<table><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr></table>";
                            tr1.Controls.Add(td1);
                            tr1.Controls.Add(td2);
                          
                        }
                        table.Controls.Add(tr1);
                    }
                    divtable.Controls.Add(table);


                }

              

            }
        }
        protected void btnlogin_click(object sender, EventArgs e)
        {

            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand(@"select * from user_profile where username='" + txtuser.Text + "' and password='" + txtpwdlogin.Text + "'", con);
            SqlDataReader dr = null;
            dr = cmd.ExecuteReader();
            if (!@dr.Read())
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('INVALID CREDENTIALS!')", true);
            else
            {
                Session["username"] = (dr["username"].ToString());
                Session["name"] = (dr["name"].ToString());
                Session["email"] = (dr["email"].ToString());
                Session["userid"] = (dr["user_id"].ToString());
                Session["pic"] = (dr["pic"].ToString());
                Response.Redirect("NewDAshBoard.aspx", false);
            }

            dr.Close();
            dr.Dispose();
            con.Close();
            con.Dispose();
        }
        protected void btnregister_click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand(@"insert into user_profile(name,username,email,password,pic) values(@name,@username,@email,@password,@pic)", con);
            cmd.Parameters.AddWithValue("@name", SqlDbType.VarChar).Value = txtname.Text;
            cmd.Parameters.AddWithValue("@username", SqlDbType.VarChar).Value = txtusernew.Text;
            cmd.Parameters.AddWithValue("@email", SqlDbType.VarChar).Value = txtemail.Text;
            cmd.Parameters.AddWithValue("@password", SqlDbType.VarChar).Value = txtpwd.Text;
            cmd.Parameters.AddWithValue("@pic", SqlDbType.VarChar).Value = "profile/profile-user.png";
            cmd.ExecuteNonQuery();
            try
            {

                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('REGISTRATION SUCCESSFUL!')", true);
            }
            catch
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('REGISTRATION UNSUCCESSFUL! TRY AGAIN LATER..')", true);
            }
            con.Close();
            con.Dispose();
        }

     
    }
}