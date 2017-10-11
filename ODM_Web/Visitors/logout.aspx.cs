using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Visitors_logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Session.Abandon();
            Response.Redirect("home_page.aspx");
            Session.Abandon();
        }
        catch (Exception ex)
        {
            
            
        }
    }
}