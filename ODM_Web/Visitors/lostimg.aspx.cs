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
public partial class Visitors_lostimg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["uname"] == null)
            {
                Response.Redirect("home_page.aspx");
            }
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
            tbl_lost_BAL objbal = new tbl_lost_BAL();
            DataSet ds = objbal.getdata(query);

            ddl_place.DataSource = ds;
            ddl_place.DataBind();
        }
        catch (Exception ex)
        {


        }
    }
    protected void btn_name_Click(object sender, EventArgs e)
    {

        try
        {
            if (Chk1.Checked == true)
            {
                if (string.IsNullOrEmpty(txt_name.Text) == false && string.IsNullOrEmpty(txt_wlost.Text) == false && string.IsNullOrEmpty(txt_age.Text) == false)
                {
                    string query = "where str_name like '" + txt_name.Text + "%' and str_where_lost like '" + txt_wlost.Text + "%' and int_age like '" + txt_age.Text + "%'";
                    binddata(query);
                }

                else if (string.IsNullOrEmpty(txt_name.Text) == false && string.IsNullOrEmpty(txt_wlost.Text) == false)
                {
                    string query = "where str_name like '" + txt_name.Text + "%' and str_where_lost like '" + txt_wlost.Text + "%'";
                    binddata(query);
                }


                else if (string.IsNullOrEmpty(txt_wlost.Text) == false && string.IsNullOrEmpty(txt_age.Text) == false)
                {
                    string query = "where str_where_lost like '" + txt_wlost.Text + "%' and int_age like '" + txt_age.Text + "%'";
                    binddata(query);
                }
                else if (string.IsNullOrEmpty(txt_age.Text) == false && string.IsNullOrEmpty(txt_name.Text) == false)
                {
                    string query = "where int_age like '" + txt_age.Text + "%' and str_name like '" + txt_name.Text + "%'";
                    binddata(query);
                }
                else if (string.IsNullOrEmpty(txt_wlost.Text) == false)
                {
                    string query = "where str_where_lost like '" + txt_wlost.Text + "%' ";
                    binddata(query);
                }
                else if (string.IsNullOrEmpty(txt_name.Text) == false)
                {
                    string query = "where str_name like '" + txt_name.Text + "%' ";
                    binddata(query);
                }
                else if (string.IsNullOrEmpty(txt_age.Text) == false)
                {
                    string query = "where int_age like '" + txt_age.Text + "%' ";
                    binddata(query);
                }



                //else if (txt_wlost.Text == null)
                //{
                //    string query = "where str_name like '" + txt_name.Text +  "%' and int_age like '" + txt_age.Text + "%'";
                //    binddata(query);
                //}
                //string query = "where str_name like '" + txt_name.Text + "%' and str_where_lost like '" + txt_wlost.Text + "%' and int_age like '" + txt_age.Text + "%'";
            }

            if (Chk1.Checked == false)
            {
                if (string.IsNullOrEmpty(txt_name.Text) == false && string.IsNullOrEmpty(txt_wlost.Text) == false && string.IsNullOrEmpty(txt_age.Text) == false)
                {
                    string query = "where str_name like '" + txt_name.Text + "%' and str_where_lost like '" + txt_wlost.Text + "%' and int_age like '" + txt_age.Text + "%'";
                    binddata(query);
                }

                else if (string.IsNullOrEmpty(txt_name.Text) == false && string.IsNullOrEmpty(txt_wlost.Text) == false)
                {
                    string query = "where str_name like '" + txt_name.Text + "%' or str_where_lost like '" + txt_wlost.Text + "%'";
                    binddata(query);
                }


                else if (string.IsNullOrEmpty(txt_wlost.Text) == false && string.IsNullOrEmpty(txt_age.Text) == false)
                {
                    string query = "where str_where_lost like '" + txt_wlost.Text + "%' or int_age like '" + txt_age.Text + "%'";
                    binddata(query);
                }

                else if (string.IsNullOrEmpty(txt_age.Text) == false && string.IsNullOrEmpty(txt_name.Text) == false)
                {
                    string query = "where int_age like '" + txt_age.Text + "%' or str_name like '" + txt_name.Text + "%'";
                    binddata(query);
                }

                else if (string.IsNullOrEmpty(txt_wlost.Text) == false)
                {
                    string query = "where str_where_lost like '" + txt_wlost.Text + "%' ";
                    binddata(query);
                }
                else if (string.IsNullOrEmpty(txt_name.Text) == false)
                {
                    string query = "where str_name like '" + txt_name.Text + "%' ";
                    binddata(query);
                }
                else if (string.IsNullOrEmpty(txt_age.Text) == false)
                {
                    string query = "where int_age like '" + txt_age.Text + "%' ";
                    binddata(query);
                }


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
            tbl_lost_BAL objbal = new tbl_lost_BAL();
            DataSet ds = objbal.getdata(query);
            ddl_place.DataSource = ds;
            ddl_place.DataBind();
        }
        catch (Exception ex)
        {
            
            
        }
    }
    protected void btn_clr_Click(object sender, EventArgs e)
    {
        txt_name.Text = string.Empty;
        txt_age.Text = string.Empty;
        txt_wlost.Text = string.Empty;
    }
}