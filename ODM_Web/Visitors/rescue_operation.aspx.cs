using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BAL;
using DAL;
using System.Data;
using System.Configuration;
public partial class Visitors_rescue_operation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (IsPostBack == false)
            {
                binddata("");

                
            }
        }
        catch (Exception ex)
        {
           
            
        }
    }
    public void binddata(string query)
    {

        try
        {
            tbl_rescue_BAL objbal = new tbl_rescue_BAL();
            DataSet ds = objbal.getdata(query);
           
            dv_list.DataSource = ds;
            dv_list.DataBind();
        }
        catch (Exception ex)
        {
            
            
        }
    }

   

    protected void lb_rcd_Click(object sender, EventArgs e)
    {

    }
   
  
    protected void btn_search_Click(object sender, EventArgs e)
    {

        try
        {
            if (string.IsNullOrEmpty(txt_search_box.Text) == false)
            {
                string query = "where str_rescue_place like '" + txt_search_box.Text + "%'";
                binddata(query);
            }
        }
        catch (Exception ex)
        {
            
            
        }
    }
    protected void btn_clear_Click(object sender, EventArgs e)
    {

        try
        {
            if (string.IsNullOrEmpty(txt_search_box.Text) == false)
            {
                binddata("");
                txt_search_box.Text = string.Empty;
            }
        }
        catch (Exception ex)
        {
            
           
        }
    }

}