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
public partial class Visitors_inquiry_page : System.Web.UI.Page
{
    string date1 = System.DateTime.Now.ToShortDateString();
    string time1 = System.DateTime.Now.ToShortTimeString();
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
                //bindddluser();
                //bindddlvoluntar();
                //lbl_user.Text = Convert.ToString(Session["unm"]);
                //txt_time.Text = System.DateTime.Now.ToShortTimeString();
                //txt_date.Text = System.DateTime.Now.ToShortDateString();

            }
        }
        catch (Exception ex)
        {
            
            
        }
            
    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        try
        {
            tbl_inquiry_BAL objbal = new tbl_inquiry_BAL();
            tbl_inquiry_DAL objdal = new tbl_inquiry_DAL();



            objdal.int_user_id = Convert.ToInt16(Session["uid"]);
            objdal.str_description = txt_description.Text;
            objdal.date_date = Convert.ToDateTime(date1);




            objdal.str_time = time1;
            //objdal.int_voluntar_id = Convert.ToInt16(ddl_voluntar.SelectedItem.Value);
            //objdal.str_ans_description = txt_ans_discription.Text;
            //objdal.date_ans_date = Convert.ToDateTime(txt_adate.Text);

            //objdal.str_ans_time = txt_atime.Text;

            int val = objbal.insert_data(objdal);

            if (val > 0)
            {


                lblmsg.Text = "inquiry successfully submited";
                lblmsg.ForeColor = System.Drawing.Color.Green;
            }

            cleardata();
        }
        catch (Exception ex)
        {
            
            
        }
    }
    ////private void bindddluser()
    //{
    //    tbl_user_BAL objbal = new tbl_user_BAL();
    //    DataSet ds = objbal.getdata("");

    //    ddl_user_name.DataValueField = "int_user_id";
    //    ddl_user_name.DataTextField = "str_user_name";

    //    ddl_user_name.DataSource = ds;
    //    ddl_user_name.DataBind();

    //    ddl_user_name.Items.Insert(0, new ListItem("---select---", "0"));

    //}
    //private void bindddlvoluntar()
    //{
    //    tbl_voluntar_BAL objbal = new tbl_voluntar_BAL();
    //    DataSet ds = objbal.getdata("");

    //    ddl_voluntar.DataValueField = "int_voluntar_id";
    //    ddl_voluntar.DataTextField = "str_voluntar_name";

    //    ddl_voluntar.DataSource = ds;
    //    ddl_voluntar.DataBind();

    //    ddl_voluntar.Items.Insert(0, new ListItem("---select---", "0"));

    //}

    protected void cleardata()
    {
        try
        {
            txt_description.Text = string.Empty;
        }
        catch (Exception ex)
        {
            
            
        }
    }

    protected void btn_cancle_Click(object sender, EventArgs e)
    {
        txt_description.Text = string.Empty;
    }
}
