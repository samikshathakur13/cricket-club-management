using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    
    protected void clrbtn_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        
    }
    protected void regbtn_Click(object sender, EventArgs e)
    {
        try
        {


            String constring = "Data Source=.;Initial Catalog=cricket;Integrated Security=True;Pooling=False";
            SqlConnection con = new SqlConnection(constring);

            String query = "INSERT INTO [cricket].[dbo].[logintable] ([name],[dateofbirt],[gender],[email],[address],[mobile],[password]) VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue.ToString() + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();


            lblerror.Text = TextBox3.Text + " SUCCESSFULLY Added Recorded ";


        }
        catch (Exception ex)
        {
            lblerror.Text = ex.Message;
        }
    }
}