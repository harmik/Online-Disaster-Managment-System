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
public partial class Voluntar_rescue_operation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["vtype"] == null)
            {
                Session.Abandon();
            }
            if (IsPostBack == false)
            {
                binddata("");

                ddl_pagesize.Items.Insert(0, new ListItem("10", "0"));
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
            gvlist.DataSource = ds;
            gvlist.DataBind();
        }
        catch (Exception ex)
        {
            
            
        }
    }
    protected void lb_rcd_Click(object sender, EventArgs e)
    {

    }
    protected void gvlist_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        try
        {
            gvlist.PageIndex = e.NewPageIndex;
            binddata("");
        }
        catch (Exception ex)
        {
            
           
        }


    }
    protected void ddl_pagesize_SelectedIndexChanged(object sender, EventArgs e)
    {

        try
        {
            gvlist.PageSize = Convert.ToInt16(ddl_pagesize.SelectedItem.Text);
            binddata("");
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