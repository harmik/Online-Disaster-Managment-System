using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;
using System.Data;
using DAL;
public partial class Visitors_resque_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            if (!IsPostBack)
            {
                bindplace(" where int_victim_id=" + Request.QueryString["id"]);


            }
        }
        catch (Exception ex)
        {
            
            
        }
    }
    private void bindplace(string query)
    {
        try
        {
            tbl_rescue_place_victim_BAL objbal = new tbl_rescue_place_victim_BAL();
            DataSet ds = objbal.getdata(query);

            dv_list.DataSource = ds;
            dv_list.DataBind();
        }
        catch (Exception ex)
        {

            
        }


        //hid_lang.Value = ds.Tables[0].Rows[0]["var_lang"].ToString();
        //hid_lat.Value = ds.Tables[0].Rows[0]["var_lat"].ToString();
    }
}