using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Joint_Segmentation
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data source=SHAMEER\\SQLEXPRESS;Initial catalog=twitter;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_button_Click(object sender, EventArgs e)
        {
            if (username_tb.Text.Equals("Admin") && pwd_tb.Text.Equals("admin"))
            {
                Response.Redirect("Admin.aspx");
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from registration where username='" + username_tb.Text + "' and pwd='" + pwd_tb.Text + "'", con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                if (dr.Read() == true)
                {
                    Response.Write("<script language='javascript'>window.alert('Login Success');</script>");
                    Session["Userlogin"] = username_tb.Text.Trim();
                    Session["Userimage"] = dr["photo"].ToString();
                    Response.Redirect("User_Home.aspx");
                }


                else
                {
                    Response.Write("<script language='javascript'>window.alert('Invalid Username & Password');</script>");
                    username_tb.Text = "";
                    pwd_tb.Text = "";

                }
            }
        }
    }
}