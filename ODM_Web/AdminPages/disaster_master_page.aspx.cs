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
public partial class AdminPages_disaster_master_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            if (IsPostBack == false)
            {
                changepanel(1, 0);
                binddata("");
                bindddldisaster_type();
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
            tbl_disaster_master_BAL objbal = new tbl_disaster_master_BAL();
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
            string query = "select_tbl_disaster_master";
            SqlCommand cm = new SqlCommand(query, cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@cnd", " where int_disaster_id=" + btn_img_edit.CommandArgument);

            ViewState["id"] = btn_img_edit.CommandArgument;

            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();

            da.Fill(ds);



            if (ds.Tables[0].Rows.Count > 0)
            {

                btn_add.Visible = true;
                btn_update.Visible = false;

                txt_disaster_master_name.Text = ds.Tables[0].Rows[0]["str_disaster_name"].ToString();

                txt_active_date.Text = Convert.ToDateTime(ds.Tables[0].Rows[0]["date_active_date"]).ToString("MM/dd/yyyy");
                txt_end_date.Text = Convert.ToDateTime(ds.Tables[0].Rows[0]["date_end_date"]).ToString("MM/dd/yyyy");
                chk_active.Checked = Convert.ToBoolean(ds.Tables[0].Rows[0]["bit_status"]);
                txt_place.Text = ds.Tables[0].Rows[0]["str_place"].ToString();
                txt_longitude.Text = ds.Tables[0].Rows[0]["str_longitude"].ToString();
                txt_latitude.Text = ds.Tables[0].Rows[0]["str_latitude"].ToString();
                ddl_disaster_type.ClearSelection();
                ddl_disaster_type.Items.FindByValue(ds.Tables[0].Rows[0]["int_disaster_type_id"].ToString()).Selected = true;

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
            SqlCommand cm = new SqlCommand("delete_tbl_disaster_master", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_disaster_id", btn_img_delete.CommandArgument);


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
            tbl_disaster_master_BAL objbal = new tbl_disaster_master_BAL();
            tbl_disaster_master_DAL objdal = new tbl_disaster_master_DAL();

            objdal.int_disaster_id = Convert.ToInt16(ViewState["id"]);
            objdal.str_disaster_name = txt_disaster_master_name.Text;

            objdal.date_active_date = Convert.ToDateTime(txt_active_date.Text);
            objdal.date_end_date = Convert.ToDateTime(txt_end_date.Text);
            objdal.bit_status = chk_active.Checked;
            objdal.str_place = txt_place.Text;
            objdal.str_longitude = txt_longitude.Text;
            objdal.str_latitude = txt_latitude.Text;

            objdal.int_disaster_type_id = Convert.ToInt16(ddl_disaster_type.SelectedItem.Value);
            objdal.str_img = fu_img.FileName;
            if (fu_img.HasFile)
            {
                //if (fu_img.PostedFile.ContentLength <= 250000)
                //{
                string path = Server.MapPath("~/upload/disaster/");
                fu_img.SaveAs(path + fu_img.FileName);
                //}

            }
            lblmsg.Visible = true;

            int val = objbal.update_data(objdal);

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
            txt_disaster_master_name.Text = string.Empty;

            txt_active_date.Text = string.Empty;
            txt_end_date.Text = string.Empty;

            txt_place.Text = string.Empty;
            txt_longitude.Text = string.Empty;
            txt_latitude.Text = string.Empty;
            ddl_disaster_type.ClearSelection();

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
            tbl_disaster_master_BAL objbal = new tbl_disaster_master_BAL();
            tbl_disaster_master_DAL objdal = new tbl_disaster_master_DAL();


            objdal.str_disaster_name = txt_disaster_master_name.Text;
            objdal.date_active_date = Convert.ToDateTime(txt_active_date.Text);

            objdal.date_end_date = Convert.ToDateTime(txt_end_date.Text);
            objdal.bit_status = chk_active.Checked;
            objdal.str_place = txt_place.Text;

            objdal.str_longitude = txt_longitude.Text;
            objdal.str_latitude = txt_latitude.Text;
            objdal.int_disaster_type_id = Convert.ToInt16(ddl_disaster_type.SelectedItem.Value);
            objdal.str_img = fu_img.FileName;
            if (fu_img.HasFile)
            {
                //if (fu_img.PostedFile.ContentLength <= 250000)
                //{
                string path = Server.MapPath("~/upload/disaster/");
                fu_img.SaveAs(path + fu_img.FileName);
                //}

            }


            lblmsg.Visible = true;



            int val = objbal.insert_data(objdal);
            if (val > 0)
            {
                binddata("");
                lblmsg.Text = "successfully inserted";
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
                string query = "where str_disaster_name like '" + txt_search_box.Text + "%'";
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


    private void bindddldisaster_type()
    {
        try
        {
            tbl_disaster_type_BAL objbal = new tbl_disaster_type_BAL();
            DataSet ds = objbal.getdata("");

            ddl_disaster_type.DataValueField = "int_disaster_type_id";
            ddl_disaster_type.DataTextField = "str_disaster_type_name";

            ddl_disaster_type.DataSource = ds;
            ddl_disaster_type.DataBind();

            ddl_disaster_type.Items.Insert(0, new ListItem("---select---", "0"));
        }
        catch (Exception ex)
        {
            
            
        }

    }

    protected void btn_select_delete_Click(object sender, EventArgs e)
    {

        try
        {
            tbl_disaster_master_BAL objbal = new tbl_disaster_master_BAL();
            tbl_disaster_master_DAL objdal = new tbl_disaster_master_DAL();

            foreach (GridViewRow row in gvlist.Rows)
            {
                var check = row.FindControl("chkselect") as CheckBox;
                if (check.Checked)
                {
                    var id = row.FindControl("Hiddenid") as HiddenField;
                    objdal.int_disaster_id = Convert.ToInt16(id.Value);
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