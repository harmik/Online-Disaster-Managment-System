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
public partial class Visitors_inquiry_ans : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["uname"] == null)
            {
                Response.Redirect("home_page.aspx");
            }
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
            tbl_inquiry_BAL objbal = new tbl_inquiry_BAL();
            DataSet ds = objbal.getdata(query);
            dv_list.DataSource = ds;
            dv_list.DataBind();
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
                string query = "where str_user_name like '" + txt_search_box.Text + "%'";
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