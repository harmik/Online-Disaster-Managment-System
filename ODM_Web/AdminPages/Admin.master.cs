using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPages_Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["uname"] == null)
                Response.Redirect("login_page.aspx");


        }
        catch (Exception ex)
        {
            
           
        }
    }
    protected void btn_logout_Click(object sender, EventArgs e)
    {
        try
        {
            Session.Abandon();
            Response.Redirect("login_page.aspx");
        }
        catch (Exception ex)
        {
            
            
        }
    }
}
