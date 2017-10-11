using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Voluntar_logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            if (Session["vtype"].ToString() == "m")
            {
                Session.Abandon();
                Response.Redirect("member_login_page.aspx");
                Session.Abandon();
            }
            else if (Session["vtype"].ToString() == "v")
            {
                Session.Abandon();
                Response.Redirect("login_voluntar_page.aspx");
                Session.Abandon();
            }

        }
        catch (Exception ex)
        {
            
            
        }
    }
}