using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

namespace MyWebsite
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Default.aspx", false);
                return;
            }
           
            if (!IsPostBack)
            {
                lblname1.Text = Session["username"].ToString();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
          
        }
        protected void btnOK_Click(object sender, EventArgs e)
        {
          
          
                if (fileUpload.HasFile)
                {

                    int length_photo = fileUpload.PostedFile.ContentLength;
                    byte[] imgbyte_photo = new byte[length_photo];
                    HttpPostedFile img_photo = fileUpload.PostedFile;
                    //set the binary data
                    img_photo.InputStream.Read(imgbyte_photo, 0, length_photo);
                    //   check first four bytes for JPG format
                    byte first = imgbyte_photo[0];
                    byte sec = imgbyte_photo[1];
                    byte th = imgbyte_photo[2];
                    byte fo = imgbyte_photo[3];
                    if (first != 255 || sec != 216)
                    {
                        msgpic.Text = "Invalid File Type For Photo.";
                       
                        return;
                    }
                    else
                    {
                        try
                        {
                            MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
                            con.Open();
                            MySqlCommand cmd = new MySqlCommand(@"update user_profile set pic=@pic where username='" + lblname1.Text + "'", con);
                            cmd.Parameters.AddWithValue("@pic", MySqlDbType.Blob).Value = imgbyte_photo;
                            cmd.ExecuteNonQuery();

                            con.Close();
                            con.Dispose();
                            string base64String = Convert.ToBase64String(imgbyte_photo, 0, length_photo);
                            aspimguser1.ImageUrl = "data:image/png;base64," + base64String;
                            aspimguser2.ImageUrl = aspimguser1.ImageUrl;
                            aspimguser3.ImageUrl = aspimguser1.ImageUrl;
                            msgpic.Text = "Updated Successfully";
                        }
                        catch(Exception ex)
                        {
                            msgpic.Text = ex.ToString();

                            return;
                        }
                    }
                   
                }
              
           

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
        }
    }
}
