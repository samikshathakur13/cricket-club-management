using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    string con = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            
            SqlDataAdapter sda = new SqlDataAdapter("Select Count(*) from logintable where email='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {
                Session["email"] = TextBox1.Text;
                if (TextBox1.Text == "admin@gmail.com")
                    Response.Redirect("index1.aspx");
                else
                    Response.Redirect("index.aspx");


            }
            else
            {

            }
        }
        catch (Exception ex) { lblerror.Text = ex.Message; }
    }
}