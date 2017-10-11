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
public partial class Voluntar_Rescue_person_victim_page : System.Web.UI.Page
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
            tbl_rescue_place_victim_BAL objbal = new tbl_rescue_place_victim_BAL();
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
            string query = "select_tbl_rescue_place_victim";
            SqlCommand cm = new SqlCommand(query, cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@cnd", " where int_victim_id=" + btn_img_edit.CommandArgument);

            ViewState["id"] = btn_img_edit.CommandArgument;

            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();

            da.Fill(ds);



            if (ds.Tables[0].Rows.Count > 0)
            {

                btn_add.Visible = true;
                btn_update.Visible = false;

                txt_victim_name.Text = ds.Tables[0].Rows[0]["str_victim_name"].ToString();
                txt_age.Text = ds.Tables[0].Rows[0]["int_victim_age"].ToString();
                txt_address.Text = ds.Tables[0].Rows[0]["str_address"].ToString();




            }

            changepanel(0, 1);

            btn_add.Visible = false;
            btn_cancle.Visible = false;
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
            SqlCommand cm = new SqlCommand("delete_tbl_rescue_place_victim", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_victim_id", btn_img_delete.CommandArgument);


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
            tbl_rescue_place_victim_BAL objbal = new tbl_rescue_place_victim_BAL();
            tbl_rescue_place_victim_DAL objdal = new tbl_rescue_place_victim_DAL();

            objdal.int_victim_id = Convert.ToInt16(ViewState["id"]);

            objdal.str_victim_name = txt_victim_name.Text;
            objdal.int_victim_age = Convert.ToInt32(txt_age.Text);
            objdal.str_gender = btn_rdo_gender.SelectedItem.Value;
            objdal.str_address = txt_address.Text;

            objdal.str_victim_image_path = fu_victim.FileName;
            if (fu_victim.HasFile)
            {
                //if (fu_img.PostedFile.ContentLength <= 250000)
                //{
                string path = Server.MapPath("~/upload/rescue_place_victim_page/");
                fu_victim.SaveAs(path + fu_victim.FileName);
                //}

            }



            lblmsg.Visible = true;


            int val = objbal.update_data(objdal);

            objbal.update_data(objdal);
            binddata("");
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
            changepanel(1, 0);
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
            txt_victim_name.Text = string.Empty;
            txt_address.Text = string.Empty;
            txt_age.Text = string.Empty;

        }
        catch (Exception ex)
        {
            
           
        }

    }




    protected void btn_add_Click(object sender, EventArgs e)
    {
        try
        {
            tbl_rescue_place_victim_BAL objbal = new tbl_rescue_place_victim_BAL();
            tbl_rescue_place_victim_DAL objdal = new tbl_rescue_place_victim_DAL();


            objdal.str_victim_name = txt_victim_name.Text;
            objdal.int_victim_age = Convert.ToInt32(txt_age.Text);
            objdal.str_gender = btn_rdo_gender.SelectedItem.Value;


            objdal.str_address = txt_address.Text;

            objdal.str_victim_image_path = fu_victim.FileName;

            if (fu_victim.HasFile)
            {
                string path = Server.MapPath("~/upload/rescue_place_victim_page/");
                fu_victim.SaveAs(path + fu_victim.FileName);
            }

            int val = objbal.insert_data(objdal);


            if (val > 0)
            {

                binddata("");
                lblmsg.Text = "Data successfully inserted";
                lblmsg.ForeColor = System.Drawing.Color.Green;
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
            tbl_rescue_place_victim_BAL objbal = new tbl_rescue_place_victim_BAL();
            tbl_rescue_place_victim_DAL objdal = new tbl_rescue_place_victim_DAL();


            foreach (GridViewRow row in gvlist.Rows)
            {
                var check = row.FindControl("chkselect") as CheckBox;
                if (check.Checked)
                {
                    var id = row.FindControl("Hiddenid") as HiddenField;
                    objdal.int_victim_id = Convert.ToInt16(id.Value);
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