using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] != null)
        {
            lblemail.Text = Session["email"].ToString();
            lbllogin.Text = "LOGOUT";
        }
        else
            lbllogin.Text = "LOGIN";
    }
}
