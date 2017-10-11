using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Visitors_visiter : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //if (Session["uname"] == null)
        //{
        //    Response.Redirect("login_user.aspx");

        //}
        try
        {
            lbl_user.Text = Convert.ToString(Session["unm"]);
        }
        catch (Exception ex)
        {
            
            
        }
            
    }
    //protected void btn_logout_Click(object sender, EventArgs e)
    //{
    //    Session.Abandon();
    //    Response.Redirect("user_login.aspx");
    //}
}
