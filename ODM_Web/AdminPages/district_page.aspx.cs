﻿using System;
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

public partial class AdminPages_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            if (IsPostBack == false)
            {
                changepanel(1, 0);
                binddata("");
                bindddlstate();
                ddl_pagesize.Items.Insert(0, new ListItem("10", "0"));
            }
        }
        catch (Exception ex)
        {
            
           
        }

    }

    private void changepanel(int det, int list)
    {
        try
        {
            if (det == 1)
            {
                pnllist.Visible = true;
                pnledit.Visible = false;
            }
            else if (list == 1)
            {
                pnllist.Visible = false;
                pnledit.Visible = true;
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
            tbl_district_BAL objbal = new tbl_district_BAL();
            DataSet ds = objbal.getdata(query);
            gvlist.DataSource = ds;
            gvlist.DataBind();

        }
        catch (Exception ex)
        {
            
            
        }

    

    }

    protected void btn_img_edit_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            ImageButton btn_img_edit = (ImageButton)sender;
            SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["dbconnect"]);
            string query = "select_tbl_district";
            SqlCommand cm = new SqlCommand(query, cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@cnd", " where int_district_id=" + btn_img_edit.CommandArgument);

            ViewState["id"] = btn_img_edit.CommandArgument;

            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();

            da.Fill(ds);



            if (ds.Tables[0].Rows.Count > 0)
            {

                btn_add.Visible = true;
                btn_update.Visible = false;

                txt_district_name.Text = ds.Tables[0].Rows[0]["str_district_name"].ToString();

                ddl_state.ClearSelection();
                ddl_state.Items.FindByValue(ds.Tables[0].Rows[0]["int_state_id"].ToString()).Selected = true;

            }

            changepanel(0, 1);

            btn_add.Visible = false;
            btn_update.Visible = true;
        }
        catch (Exception ex)
        {
            
            
        }


    }
    protected void btn_img_delete_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            ImageButton btn_img_delete = (ImageButton)sender;
            SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["dbconnect"]);
            SqlCommand cm = new SqlCommand("delete_tbl_district", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_district_id", btn_img_delete.CommandArgument);


            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            if (val > 0)
            {
                //lblmsg.Text = "Data successfully deleted";
                binddata("");
            }
        }
        catch (Exception ex)
        {

        }
        
    }


    protected void btn_update_Click(object sender, EventArgs e)
    {
        try
        {
            tbl_district_BAL objbal = new tbl_district_BAL();
            tbl_district_DAL objdal = new tbl_district_DAL();



            objdal.str_district_name = txt_district_name.Text;
            objdal.int_district_id = Convert.ToInt16(ViewState["id"]);
            objdal.int_state_id = Convert.ToInt16(ddl_state.SelectedItem.Value);
            lblmsg.Visible = true;
            int val = objbal.update_data(objdal);

            objbal.update_data(objdal);
            binddata("");
            changepanel(1, 0);
            if (val > 0)
            {
                lblmsg.Text = "Data Update";
                lblmsg.ForeColor = System.Drawing.Color.Green;


            }
            else
            {
                lblmsg.Text = "Error in Process,try again";
                lblmsg.ForeColor = System.Drawing.Color.Red;
            }




        }
        catch (Exception ex)
        {
            
            
        }

    }
    protected void btn_rcd_add_Click(object sender, EventArgs e)
    {

        try
        {
            lblmsg.Visible = false;
            btn_add.Visible = true;
            btn_update.Visible = false;

            changepanel(0, 1);
            txt_district_name.Text = string.Empty;
            ddl_state.ClearSelection();
        }
        catch (Exception ex)
        {
            
           
        }


    }


    protected void lb_rcd_Click(object sender, EventArgs e)
    {

        try
        {
            changepanel(1, 0);

        }
        catch (Exception ex)
        {
            
            
        }
    }
    protected void btn_add_Click1(object sender, EventArgs e)
    {
        try
        {
            tbl_district_BAL objbal = new tbl_district_BAL();
            tbl_district_DAL objdal = new tbl_district_DAL();


            objdal.str_district_name = txt_district_name.Text;
            objdal.int_state_id = Convert.ToInt16(ddl_state.SelectedItem.Value);
            lblmsg.Visible = true;
            int val = objbal.insert_data(objdal);
            if (val > 0)
            {

                binddata("");
                lblmsg.Text = "Data successfully inserted";
                lblmsg.ForeColor = System.Drawing.Color.Green;
            }
            else if (val == -1)
            {

                lblmsg.Text = "name duplicate is not allowed";
                lblmsg.ForeColor = System.Drawing.Color.Red;
            }



            changepanel(1, 0);
        }
        catch (Exception ex)
        {
            
            
        }


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
            lblmsg.Visible = false;
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
            lblmsg.Visible = false;
            if (string.IsNullOrEmpty(txt_search_box.Text) == false)
            {
                string query = "where str_district_name like '" + txt_search_box.Text + "%'";
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
            lblmsg.Visible = false;
            if (string.IsNullOrEmpty(txt_search_box.Text) == false)
            {
                lblmsg.Visible = true;
                binddata("");
                txt_search_box.Text = string.Empty;
            }
        }
        catch (Exception ex)
        {
            
            
        }
    }


    private void bindddlstate()
    {
        try
        {
            tbl_state_BAL objbal = new tbl_state_BAL();
            DataSet ds = objbal.getdata("");

            ddl_state.DataValueField = "int_state_id";
            ddl_state.DataTextField = "str_state_name";

            ddl_state.DataSource = ds;
            ddl_state.DataBind();

            ddl_state.Items.Insert(0, new ListItem("---select---", "0"));

        }
        catch (Exception ex)
        {
            
           
        }
    }

    protected void btn_select_delete_Click(object sender, EventArgs e)
    {

        try
        {
            tbl_district_BAL objbal = new tbl_district_BAL();
            tbl_district_DAL objdal = new tbl_district_DAL();

            foreach (GridViewRow row in gvlist.Rows)
            {
                var check = row.FindControl("chkselect") as CheckBox;
                if (check.Checked)
                {
                    var id = row.FindControl("Hiddenid") as HiddenField;
                    objdal.int_district_id = Convert.ToInt16(id.Value);
                    objbal.delete_data(objdal);
                    binddata("");


                }



            }
        }
        catch (Exception ex)
        {
            
            
        }
    }
   
}