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
public partial class Visitors_lost_page : System.Web.UI.Page
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
                txt_uname.Text = Convert.ToString(Session["unm"]);
        }
        catch (Exception ex)
        {


        }

    }
    protected void btn_add_Click(object sender, EventArgs e)
    {

        try
        {
            tbl_lost_BAL objbal = new tbl_lost_BAL();
            tbl_lost_DAL objdal = new tbl_lost_DAL();

            objdal.int_user_id = Convert.ToInt16(Session["uid"]);
            objdal.str_name = txt_name.Text;

            objdal.date_date = Convert.ToDateTime(txt_date.Text);
            objdal.str_time = txt_time.Text;
            objdal.str_where_lost = txt_wherelost.Text;
            //objdal.bit_status = chk_status.Checked;
            //objdal.date_find_date = Convert.ToDateTime(txt_fdate.Text);
            //objdal.str_find_time = txt_ftime.Text;
            objdal.int_age = Convert.ToInt32(txt_age.Text);
            objdal.str_img_path = fu_img.FileName;
            objdal.str_gender = rdo_gender.SelectedItem.Value;

            if (fu_img.HasFile)
            {
                //if (fu_img.PostedFile.ContentLength <= 250000)
                //{
                string path = Server.MapPath("~/upload/lost_page/");
                fu_img.SaveAs(path + fu_img.FileName);
                //}

            }
            int val = objbal.insert_data(objdal);

            if (val > 0)
            {


                lblmsg.Text = "Data successfully inserted";
                lblmsg.ForeColor = System.Drawing.Color.Green;
            }

            cleardata();
        }
        catch (Exception ex)
        {
            
            
        }
      
    }

    protected void cleardata()
    {
        try
        {
            txt_age.Text = string.Empty;
            txt_date.Text = string.Empty;
            txt_name.Text = string.Empty;
            txt_time.Text = string.Empty;
            txt_wherelost.Text = string.Empty;
        }
        catch (Exception ex)
        {


        }

    }

    protected void btn_cancle_Click(object sender, EventArgs e)
    {
        txt_age.Text = string.Empty;
        txt_date.Text = string.Empty;
        txt_name.Text = string.Empty;
        txt_time.Text = string.Empty;
        txt_wherelost.Text = string.Empty;
    }

}