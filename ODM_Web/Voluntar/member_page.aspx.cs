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
using System.IO;
using System.Text;
using System.Security.Cryptography;

public partial class Voluntar_member_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            if (IsPostBack == false)
            {
                bindddldisastermaster();
                bindddldesignation();
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
            tbl_member_BAL objbal = new tbl_member_BAL();
            tbl_member_DAL objdal = new tbl_member_DAL();
            cryptography objcrypt = new cryptography();

            string str = objcrypt.Encrypt(txt_password.Text);

            objdal.int_disaster_id = Convert.ToInt16(ddl_disaster_master.SelectedItem.Value);
            objdal.str_member_name = txt_member_name.Text;
            objdal.int_designation_id = Convert.ToInt16(ddl_designation_name.SelectedItem.Value);


            objdal.str_current_working = txt_currentworking.Text;
            objdal.str_address = txt_address.Text;
            objdal.int_contact = Convert.ToInt64(txt_contact.Text);
            objdal.str_email = txt_email.Text;
            objdal.str_password = str;


            int val = objbal.insert_data(objdal);

            if (val > 0)
            {


                lblmsg.Text = "Data successfully inserted";
                lblmsg.ForeColor = System.Drawing.Color.Green;
                ddl_disaster_master.ClearSelection();
                txt_member_name.Text = string.Empty;
                ddl_designation_name.ClearSelection();
                txt_currentworking.Text = string.Empty;
                txt_address.Text = string.Empty;
                txt_contact.Text = string.Empty;
                txt_email.Text = string.Empty;
            }
        }
        catch (Exception ex)
        {
            
            
        }
    }
    private void bindddldisastermaster()
    {
        try
        {
            tbl_disaster_master_BAL objbal = new tbl_disaster_master_BAL();
            DataSet ds = objbal.getdata("");

            ddl_disaster_master.DataValueField = "int_disaster_id";
            ddl_disaster_master.DataTextField = "str_disaster_name";

            ddl_disaster_master.DataSource = ds;
            ddl_disaster_master.DataBind();

            ddl_disaster_master.Items.Insert(0, new ListItem("---select---", "0"));
        }
        catch (Exception ex)
        {
            
            
        }

    }
    private void bindddldesignation()
    {
        try
        {
            tbl_designation_BAL objbal = new tbl_designation_BAL();
            DataSet ds = objbal.getdata("");

            ddl_designation_name.DataValueField = "int_designation_id";
            ddl_designation_name.DataTextField = "str_designation_name";

            ddl_designation_name.DataSource = ds;
            ddl_designation_name.DataBind();

            ddl_designation_name.Items.Insert(0, new ListItem("---select---", "0"));
        }
        catch (Exception ex)
        {
            
            
        }

    }

    protected void btn_cancle_Click(object sender, EventArgs e)
    {
        try
        {
            ddl_disaster_master.ClearSelection();
            txt_member_name.Text = string.Empty;
            ddl_designation_name.ClearSelection();
            txt_currentworking.Text = string.Empty;
            txt_address.Text = string.Empty;
            txt_contact.Text = string.Empty;
            txt_email.Text = string.Empty;
        }
        catch (Exception ex)
        {
            
           
        }
    }
}
