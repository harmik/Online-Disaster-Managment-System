using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class AdminPages_location : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=MB-PC\\SQLEXPRESS;Initial Catalog=odm_new;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {



        try
        {
            if (IsPostBack == false)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "javascript", "InitializeMap();", true);


                string latitude = Request.QueryString["latitude"];

                string longitude = Request.QueryString["longitude"];
                string imei = Request.QueryString["imei"];



                cn.Open();
                string query = "insert into tbl_location values('" + latitude + "','" + longitude + "','" + imei + "')";

                SqlCommand cm = new SqlCommand(query, cn);
                cm.ExecuteNonQuery();
                cn.Close();
            }
        }
        catch (Exception ex)
        {
            
            
        }

          

       
    }
}
