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

using iTextSharp.text.pdf;
using iTextSharp.text;
using MySql.Data.MySqlClient;

namespace MyWebsite
{
    public partial class admndash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if(Session["admin"]==null)
            {
                Response.Redirect("login.aspx", false);
                return;
            }
         
            if (!IsPostBack)
            {
                MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
                con.Open();
                MySqlCommand cmd = new MySqlCommand(@"select a.*,b.* from user_profile a inner join user_det b on a.username=b.username", con);
                MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                grdpat.DataSource = dt;
                grdpat.DataBind();
                con.Close();
                con.Dispose();

            }
        }
       

     

      
        private static void ExtractPages(string inputFile, string outputFile, int start, int end)
        {
            // get input document
            PdfReader inputPdf = new PdfReader(inputFile);


            // retrieve the total number of pages
            int pageCount = inputPdf.NumberOfPages;


            if (end < start || end > pageCount)
            {
                end = pageCount;
            }


            // load the input document
            Document inputDoc =
                new Document(inputPdf.GetPageSizeWithRotation(1));


            // create the filestream
            using (FileStream fs = new FileStream(outputFile, FileMode.Create))
            {
                // create the output writer
                PdfWriter outputWriter = PdfWriter.GetInstance(inputDoc, fs);
                inputDoc.Open();
                PdfContentByte cb1 = outputWriter.DirectContent;


                // copy pages from input to output document
                for (int i = start; i <= end; i++)
                {
                    inputDoc.SetPageSize(inputPdf.GetPageSizeWithRotation(i));
                    inputDoc.NewPage();


                    PdfImportedPage page =
                        outputWriter.GetImportedPage(inputPdf, i);
                    int rotation = inputPdf.GetPageRotation(i);


                    if (rotation == 90 || rotation == 270)
                    {
                        cb1.AddTemplate(page, 0, -1f, 1f, 0, 0,
                            inputPdf.GetPageSizeWithRotation(i).Height);
                    }
                    else
                    {
                        cb1.AddTemplate(page, 1f, 0, 0, 1f, 0, 0);
                    }
                }


                inputDoc.Close();
            }
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
        protected void btnNote_Click(object sender, EventArgs e)
        {
            string filepath = "";
            if (fileUpload.PostedFile.ContentLength > 10000000)
            {
                lblmsg.Text = "PLEASE UPLOAD FILES OF LESS THAN 10 MB.";
                lblmsg.Visible = true;
                return;
            }
            string fileExt = System.IO.Path.GetExtension(fileUpload.FileName).ToLower();
            if (fileExt != ".png" && fileExt != ".jpg" && fileExt!=".mp4")
            {
                lblmsg.Text = "PLEASE UPLOAD PNG/JPG/MP4 ONLY.";
                lblmsg.Visible = true;
                return;
            }
            if (fileExt == ".mp4")
            {
                filepath= "video/" + txtName.Text + ".mp4";
                fileUpload.SaveAs(Server.MapPath(filepath));
            }
            else
            {
                filepath = "photo/" + txtName.Text + fileExt;
                fileUpload.SaveAs(Server.MapPath(filepath));
            }

            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
            con1.Open();

            SqlCommand cmd11 = new SqlCommand(@"insert into phvid(title,tag,path,dateup)values(@title,@tag,@path,@dateup)", con1);
            cmd11.Parameters.AddWithValue("@title", SqlDbType.VarChar).Value = txtName.Text;
            cmd11.Parameters.AddWithValue("@tag", SqlDbType.VarChar).Value = txtgrp.Text;
            cmd11.Parameters.AddWithValue("@path", SqlDbType.VarChar).Value = filepath;
            cmd11.Parameters.AddWithValue("@dateup", SqlDbType.VarChar).Value = DateTime.Now;
            cmd11.ExecuteNonQuery();
            con1.Close();
            con1.Dispose();
            //int total = (int)cmd11.ExecuteScalar();
            //if (total == 0)
            //{
            //    maxslnonew = 0;
            //}
            //else
            //{
            //    SqlCommand cmd1 = new SqlCommand(@"select max(slno) from tbl_seller", con1);
            //    int maxid = (int)cmd1.ExecuteScalar();
            //    maxslnonew = maxid;
            //}
            //slno = maxslnonew + 1;


            //string note_id = "N_" + +slno;


           // string name = fileUpload.PostedFile.FileName;
            //string pdfname = Session["userid"].ToString() + Session["username"].ToString() + note_id + ".pdf";
            //string thumbname = Session["userid"].ToString() + Session["username"].ToString() + note_id + ".jpg";
            //string pdfpath = "file_notes/" + pdfname;
            //string previewpath = "preview/" + pdfname;
            //string imgpath = "images/" + thumbname;
            //int pdfsize = fileUpload.PostedFile.ContentLength;
            //int x = pdfsize;
            //fileUpload.SaveAs(Server.MapPath(pdfpath));

            //string inpath = Server.MapPath(pdfpath);
            //string outpath = Server.MapPath(previewpath);
            //string thumbpath = Server.MapPath(imgpath);
            //ExtractPages(inpath, outpath, 1, 2);

          //  Aspose.Pdf.Document pdfDocument = new Aspose.Pdf.Document(Server.MapPath(previewpath));




            //  using (FileStream imageStream = new FileStream("image" + pagecount + ".jpg", FileMode.Create))
          //  using (FileStream imageStream = new FileStream("" + thumbpath + "", FileMode.Create))

            //  using(var outfile=File.Create(thumbpath))
            {
                // Create Resolution object
                //Resolution resolution = new Resolution(300);
                //// Create JPEG device with specified attributes (Width, Height, Resolution, Quality)
                //// where Quality [0-100], 100 is Maximum
                //JpegDevice jpegDevice = new JpegDevice(resolution, 100);
                //jpegDevice.Process(pdfDocument.Pages[1], imageStream);
                //// Convert a particular page and save the image to stream
                //jpegDevice.Process(pdfDocument.Pages[pageCount], imageStream);
                // Close stream

                //imageStream.Close();

            }
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
            //SqlCommand cmd = new SqlCommand(@"insert into tbl_seller(note_id,title,username,email,grade_tag,sub_tag,up_date,ip,fpath,author,price,user_id,file_name,ppath,ipath) values(@note_id,@title,@user,@email,@grade_tag,@sub_tag,@up_date,@ip,@file,@author,@price,@user_id,@file_name,@ppath,@ipath)", con1);
            //cmd.Parameters.AddWithValue("@note_id", SqlDbType.VarChar).Value = note_id;
            //cmd.Parameters.AddWithValue("@title", SqlDbType.VarChar).Value = txtName.Text;
            //cmd.Parameters.AddWithValue("@user", SqlDbType.VarChar).Value = Session["username"].ToString();
            //cmd.Parameters.AddWithValue("@email", SqlDbType.VarChar).Value = Session["email"].ToString();
            //cmd.Parameters.AddWithValue("@grade_tag", SqlDbType.VarChar).Value = slctstate.Value;
            //cmd.Parameters.AddWithValue("@sub_tag", SqlDbType.VarChar).Value = sub_tag;
            //cmd.Parameters.AddWithValue("@up_date", SqlDbType.VarChar).Value = DateTime.Now.ToShortDateString();
            //cmd.Parameters.AddWithValue("@ip", SqlDbType.VarChar).Value = ip;
            //cmd.Parameters.AddWithValue("@file", SqlDbType.VarChar).Value = pdfpath;
            //cmd.Parameters.AddWithValue("@author", SqlDbType.VarChar).Value = txtauthor.Text;
            //cmd.Parameters.AddWithValue("@price", SqlDbType.VarChar).Value = txtPrice.Text;
            //cmd.Parameters.AddWithValue("@user_id", SqlDbType.VarChar).Value = Session["userid"].ToString();
            //cmd.Parameters.AddWithValue("@file_name", SqlDbType.VarChar).Value = pdfname;
            //cmd.Parameters.AddWithValue("@ppath", SqlDbType.VarChar).Value = previewpath;
            //cmd.Parameters.AddWithValue("@ipath", SqlDbType.VarChar).Value = imgpath;
            //cmd.ExecuteNonQuery();
            //try
            //{
            //    lblmsg.Text = "NOTE SUCCESSFULLY UPLOADED!";
            //    lblmsg.Visible = true;
             
            //}
            //catch
            //{
            //    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('UPLOAD UNSUCCESSFUL. TRY AGAIN LATER!')", true);

            //}
        }
        protected void grdpat_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Send")
            {
                int index = Convert.ToInt32(e.CommandArgument.ToString());
                TextBox txtmsg = (TextBox)grdpat.Rows[index].FindControl("txtmsg");
                Label lbluser = (Label)grdpat.Rows[index].FindControl("lblusername");
                SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ToString());
                con1.Open();

                SqlCommand cmd11 = new SqlCommand(@"insert into tbl_msg(tomsg,frmmsg,msg,datesnd)values(@tomsg,@frmmsg,@msg,@datesnd)", con1);
                cmd11.Parameters.AddWithValue("@tomsg", SqlDbType.VarChar).Value = lbluser.Text;
                cmd11.Parameters.AddWithValue("@frmmsg", SqlDbType.VarChar).Value = "admin";
                cmd11.Parameters.AddWithValue("@msg", SqlDbType.VarChar).Value = txtmsg.Text;
                cmd11.Parameters.AddWithValue("@datesnd", SqlDbType.VarChar).Value = DateTime.Now;
                cmd11.ExecuteNonQuery();
                con1.Close();
                con1.Dispose();
            }
        }

        protected void grdpat_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}