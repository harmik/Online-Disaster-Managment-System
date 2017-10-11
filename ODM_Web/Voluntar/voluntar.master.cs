using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Voluntar_voluntar : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["vname"] == null)
        //{
        //    Session.Abandon();
        //    Response.Redirect("login_voluntar_page.aspx");
        //}
        //else if (Session["vname"] == null)
        //{
        //    Session.Abandon();
        //    Response.Redirect("member_login_page.aspx");
        //}

        try
        {
            if (Session["vname"] == null)
            {
                Response.Redirect("member_login_page.aspx");
            }
        }
        catch (Exception ex)
        {
            
            
        }
    }

}
