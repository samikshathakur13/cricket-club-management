using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;
//using System.Web.Mail;
using System.IO;
//using EASendMail;
using System.Net;

public partial class schedule : System.Web.UI.Page
{

   //static String constring = "Data Source=.;Initial Catalog=cricket;Integrated Security=True;Pooling=False";
   // SqlConnection con = new SqlConnection(constring);
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cricketConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            String query = "INSERT INTO [cricket].[dbo].[matchtable] ([matchname],[teamone],[teamtwo],[date],[time],[location],[groundname]) VALUES('" + TextBox7.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lblerror.Text = TextBox7.Text + " is desided on" + TextBox6.Text + "... ";
        }
        catch (Exception ex)
        {
            lblerror.Text = ex.Message;
        }
        finally
        { con.Close(); }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            string body = "";
            String ConnStr = "Data Source=.;Initial Catalog=cricket;Integrated Security=True;Pooling=False;";
            String SQL = "SELECT * FROM matchtable;";
            SqlDataAdapter TitlesAdpt = new SqlDataAdapter(SQL, ConnStr);
            DataSet Titles = new DataSet();
            // No need to open or close the connection
            //   since the SqlDataAdapter will do this automatically.
            TitlesAdpt.Fill(Titles);
            body = "<table border=1>";
            foreach (DataRow Title in Titles.Tables[0].Rows)
            {
                body += "<tr>";

                body += "<td>" + String.Format("{0:c}", Title[1]) + "</td>";
                body += "<td>" + String.Format("{0:c}", Title[2]) + "</td>";
                body += "<td>" + String.Format("{0:c}", Title[3]) + "</td>";
                body += "<td>" + String.Format("{0:c}", Title[4]) + "</td>";
                body += "<td>" + String.Format("{0:c}", Title[5]) + "</td>";
                body += "<td>" + String.Format("{0:c}", Title[6]) + "</td>";
                body += "<td>" + String.Format("{0:c}", Title[7]) + "</td>";
                body += "</tr>";
            }
            body += "</table>";

            String SQL1 = "SELECT email FROM logintable;";
            SqlDataAdapter TitlesAdpt1 = new SqlDataAdapter(SQL, ConnStr);
            DataSet Titles1 = new DataSet();
            foreach (DataRow Title in Titles1.Tables[0].Rows)
            {
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                client.EnableSsl = true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential("apaksh2626@gmail.com", "00000000000");
                MailMessage mm = new MailMessage();


                mm.To.Add(String.Format("{0:c}", Title[0]));
                mm.From = new MailAddress("apaksh2626@gmail.com");
                mm.Subject = "match information subject";
                mm.IsBodyHtml = true;
                mm.Body = body;
                client.Send(mm);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('message has been send successfully');", true);

            } Response.Write("successfully done");
        }
        catch (Exception ex) { Response.Write("COULD NOT SEMD MAIL" + ex.Message); }
        finally { con.Close(); }

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        //update data
        try
        {
            String query = "update matchtable set matchname ='" + TextBox7.Text + "',teamone='" + TextBox1.Text + "',teamtwo='" + TextBox2.Text + "',date='" + TextBox3.Text + "',time='" + TextBox4.Text + "',location ='" + TextBox5.Text + "',groundname='" + TextBox6.Text + "' where mid= '" + Label1.Text + "';";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lblerror.Text = " UPDATED DATA SUCCESSFULLY... ";
        }
        catch (Exception ex)
        {
            lblerror.Text = ex.Message;
        }
        finally
        { con.Close(); }

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        //delete data
        try
        {
            String query = "DELETE FROM matchtable where mid= '" + Label1.Text + "';";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lblerror.Text = " DELETED DATA SUCCESSFULLY... ";
        }
        catch (Exception ex)
        {
            lblerror.Text = ex.Message;
        }
        finally
        { con.Close(); }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridView1.SelectedRow;
        Label1.Text = gr.Cells[1].Text;
        TextBox7.Text = gr.Cells[2].Text;
        TextBox1.Text = gr.Cells[3].Text;
        TextBox2.Text = gr.Cells[4].Text;
        TextBox3.Text = gr.Cells[5].Text;
        TextBox4.Text = gr.Cells[6].Text;
        TextBox5.Text = gr.Cells[7].Text;
        TextBox6.Text = gr.Cells[8].Text;
        
    }
}