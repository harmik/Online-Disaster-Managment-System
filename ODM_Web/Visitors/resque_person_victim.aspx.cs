using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BAL;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Visitors_resque_person_victim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            bindlost("");
        }
        catch (Exception ex)
        {
           
           
        }
    }
    private void bindlost(string query)
    {
        try
        {
            tbl_rescue_place_victim_BAL objbal = new tbl_rescue_place_victim_BAL();
            DataSet ds = objbal.getdata(query);

            ddl_place.DataSource = ds;
            ddl_place.DataBind();
        }
        catch (Exception ex)
        {
            
            
        }
    }
    public void binddata(string query)
    {

        try
        {
            tbl_rescue_place_victim_BAL objbal = new tbl_rescue_place_victim_BAL();
            DataSet ds = objbal.getdata(query);
            ddl_place.DataSource = ds;
            ddl_place.DataBind();
        }
        catch (Exception ex)
        {
            
            
        }
    }
    protected void btn_search_Click(object sender, EventArgs e)
    {
        try
        {
            if (string.IsNullOrEmpty(txt_search_box.Text) == false)
            {
                string query = "where str_victim_name like '" + txt_search_box.Text + "%'";
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