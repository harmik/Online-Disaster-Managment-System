using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPages_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            lbl_name.Text = Convert.ToString(Session["name"]);
        }
        catch (Exception ex)
        {
            
           
        }
       
    }
}