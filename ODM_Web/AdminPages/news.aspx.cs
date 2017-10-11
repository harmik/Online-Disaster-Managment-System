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

public partial class AdminPages_news : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            if (IsPostBack == false)
            {
                changepanel(1, 0);
                binddata("");

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
            tbl_news_BAL objbal = new tbl_news_BAL();
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
            string query = "select_tbl_news";
            SqlCommand cm = new SqlCommand(query, cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@cnd", " where int_news_id=" + btn_img_edit.CommandArgument);

            ViewState["id"] = btn_img_edit.CommandArgument;

            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();

            da.Fill(ds);



            if (ds.Tables[0].Rows.Count > 0)
            {

                btn_add.Visible = true;
                btn_update.Visible = false;

                txt_news.Text = ds.Tables[0].Rows[0]["str_news_title"].ToString();
                txt_short.Text = ds.Tables[0].Rows[0]["str_short_desc"].ToString();
                txt_long.Text = ds.Tables[0].Rows[0]["str_long_desc"].ToString();
                txt_date.Text = Convert.ToDateTime(ds.Tables[0].Rows[0]["date_date"]).ToString("MM/dd/yyyy");



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
            SqlCommand cm = new SqlCommand("delete_tbl_news", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_news_id", btn_img_delete.CommandArgument);


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
            tbl_news_BAL objbal = new tbl_news_BAL();
            tbl_news_DAL objdal = new tbl_news_DAL();


            lblmsg.Visible = true;
            objdal.str_news_title = txt_news.Text;
            objdal.int_news_id = Convert.ToInt16(ViewState["id"]);
            objdal.str_short_desc = txt_short.Text;
            objdal.str_long_desc = txt_long.Text;
            objdal.date_date = Convert.ToDateTime(txt_date.Text);

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
            txt_news.Text = string.Empty;
            txt_short.Text = string.Empty;
            txt_long.Text = string.Empty;
            txt_date.Text = string.Empty;



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
            tbl_news_BAL objbal = new tbl_news_BAL();
            tbl_news_DAL objdal = new tbl_news_DAL();


            objdal.str_news_title = txt_news.Text;
            objdal.str_short_desc = txt_short.Text;
            objdal.str_long_desc = txt_long.Text;
            objdal.date_date = Convert.ToDateTime(txt_date.Text);



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

                lblmsg.Text = "name duplicate is dot allowed";
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
                string query = "where str_news_title_name like '" + txt_search_box.Text + "%'";
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




    protected void btn_select_delete_Click(object sender, EventArgs e)
    {

        try
        {
            tbl_news_BAL objbal = new tbl_news_BAL();
            tbl_news_DAL objdal = new tbl_news_DAL();

            foreach (GridViewRow row in gvlist.Rows)
            {
                var check = row.FindControl("chkselect") as CheckBox;
                if (check.Checked)
                {
                    var id = row.FindControl("Hiddenid") as HiddenField;
                    objdal.int_news_id = Convert.ToInt16(id.Value);
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