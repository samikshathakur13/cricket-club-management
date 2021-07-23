using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
public partial class profile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"].ToString() == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            if (con.State == ConnectionState.Open)
            { con.Close(); }


            try
            {
                String s = "Select * from logintable where email='" + Session["email"].ToString() + "'";
                SqlCommand sc = new SqlCommand(s, con);
                SqlDataReader myreader;
                con.Open();
                myreader = sc.ExecuteReader();

                while (myreader.Read())
                {
                    TextBox1.Text = myreader["name"].ToString();
                    TextBox2.Text = myreader["price"].ToString();
                    DropDownList1.Text = myreader["gender"].ToString();
                    TextBox3.Text = myreader["email"].ToString();
                    TextBox4.Text = myreader["address"].ToString();
                    TextBox5.Text = myreader["mobile"].ToString();
                    TextBox6.Text = myreader["password"].ToString();
                }

            }
            catch (Exception ex)
            { lblerror.Text = ex.Message; }
            finally
            { con.Close(); }
        }
    }
    protected void regbtn_Click(object sender, EventArgs e)
    {
        try
        {
            String query = "UPDATE [cricket].[dbo].[logintable]SET [name] = '" + TextBox1.Text + "',[dateofbirt] = '" + TextBox2.Text + "',[gender] = '" + DropDownList1.SelectedValue.ToString() + "',[address] = '" + TextBox4.Text + "',[mobile] = '" + TextBox5.Text + "',[password] = '" + TextBox6.Text + "' WHERE [email]= " + Session["email"].ToString() + "";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            lblerror.Text = "SUCCESSFULLY UPDATED ";



        }
        catch (Exception ex)
        {
            lblerror.Text = ex.Message;
        }
    }
    protected void clrbtn_Click(object sender, EventArgs e)
    {
        //clear text field

    }
}