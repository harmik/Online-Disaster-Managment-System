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

public partial class Voluntar_lost_replay_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (IsPostBack == false)
            {
                changepanel(1, 0);
                binddata("");

                ddl_pagesize.Items.Insert(0, new ListItem("5", "0"));
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
            tbl_lost_BAL objbal = new tbl_lost_BAL();
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
            string query = "select_tbl_lost";
            SqlCommand cm = new SqlCommand(query, cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@cnd", " where int_lost_id=" + btn_img_edit.CommandArgument);

            ViewState["id"] = btn_img_edit.CommandArgument;

            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();

            da.Fill(ds);



            if (ds.Tables[0].Rows.Count > 0)
            {

                txt_user_name.Text = ds.Tables[0].Rows[0]["str_user_name"].ToString();

                txt_name.Text = ds.Tables[0].Rows[0]["str_name"].ToString();

                txt_date.Text = Convert.ToDateTime(ds.Tables[0].Rows[0]["date_date"]).ToString("MM/dd/yyyy");
                txt_time.Text = ds.Tables[0].Rows[0]["str_time"].ToString();

                //chk_status.Checked = Convert.ToBoolean(ds.Tables[0].Rows[0]["bit_status"]);

                txt_wherelost.Text = ds.Tables[0].Rows[0]["str_where_lost"].ToString();
                txt_fdate.Text = Convert.ToDateTime(ds.Tables[0].Rows[0]["date_find_date"]).ToString("MM/dd/yyyy");
                txt_ftime.Text = ds.Tables[0].Rows[0]["str_find_time"].ToString();
                txt_age.Text = ds.Tables[0].Rows[0]["int_age"].ToString();
                //fu_img.PostedFile = ds.Tables[0].Rows[0]["str_img_path"].ToString;

                rdo_gender.SelectedValue = ds.Tables[0].Rows[0]["str_gender"].ToString();







            }

            changepanel(0, 1);


            btn_update.Visible = true;
            btn_cancle.Visible = false;
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
                string query = "where str_name like '" + txt_search_box.Text + "%'";
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
                binddata("");
                txt_search_box.Text = string.Empty;
            }
        }
        catch (Exception ex)
        {
            
            
        }
    }

    protected void btn_logout_Click(object sender, EventArgs e)
    {
        try
        {
            Session.Abandon();
            Response.Redirect("login_voluntar_page.aspx");
        }
        catch (Exception ex)
        {
            
            
        }
    }


   
    protected void btn_update_Click(object sender, EventArgs e)
    {
        try
        {
            tbl_lost_BAL objbal = new tbl_lost_BAL();
            tbl_lost_DAL objdal = new tbl_lost_DAL();

            objdal.int_lost_id = Convert.ToInt16(ViewState["id"]);
            //objdal.int_user_id =txt_User_name.Text;
            //objdal.str_description = txt_description.Text;
            //objdal.date_date = Convert.ToDateTime(txt_date.Text);
            //objdal.str_time = txt_time.Text;
            objdal.bit_status = chk_status.Checked;
            objdal.date_find_date = Convert.ToDateTime(txt_fdate.Text);
            objdal.str_find_time = txt_ftime.Text;

            //lblmsg.Visible = true;

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
}



