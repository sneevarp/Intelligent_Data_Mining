using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace Joint_Segmentation
{
    public partial class Signup : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data source=SHAMEER\\SQLEXPRESS;Initial catalog=twitter;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void create_button_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
            string s = Server.MapPath("~/Upload img");
            string photoname = Path.GetFileName(photo_FileUpload1.PostedFile.FileName);
            photo_FileUpload1.SaveAs(s + "\\" + photoname);
            string img = "~/Upload img/" + photoname;

            SqlCommand cmd = new SqlCommand("insert into registration (name,username,pwd,email,phno,address,photo)values('" + name_tb.Text + "','" + username_tb.Text + "','" + pwd_tb.Text + "','" + email_tb.Text + "','" + phno_tb.Text + "','" + address_tb.Text + "','" + img + "')", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script language='javascript'>window.alert('Account Created');</script>");
            con.Close();
            cleardata();

        }
        public void cleardata()
        {
            name_tb.Text = "";
            username_tb.Text = "";
            pwd_tb.Text = "";
            repeat_pwd_tb.Text = "";
            email_tb.Text = "";
            phno_tb.Text = "";
            address_tb.Text = "";

        }

    }
}