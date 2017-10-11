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
public partial class Visitors_user_page1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        try
        {
            tbl_user_BAL objbal = new tbl_user_BAL();
            tbl_user_DAL objdal = new tbl_user_DAL();
            cryptography objcrypt = new cryptography();

            string str = objcrypt.Encrypt(txt_password.Text);


            objdal.str_user_name = txt_user_name.Text;
            objdal.str_address = txt_address.Text;
            objdal.int_contact = Convert.ToInt64(txt_contact.Text);
            objdal.str_email = txt_email.Text;
            objdal.str_password = str;

            int val = objbal.insert_data(objdal);

            if (val > 0)
            {


                lblmsg.Text = "Registration successfully Complate";
                lblmsg.ForeColor = System.Drawing.Color.Green;
            }
            Response.Redirect("home_page.aspx");
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
            txt_address.Text = string.Empty;
            txt_con_password.Text = string.Empty;
            txt_contact.Text = string.Empty;
            txt_email.Text = string.Empty;
            txt_password.Text = string.Empty;
            txt_user_name.Text = string.Empty;
        }
        catch (Exception ex)
        {


        }

    }
   

    protected void btn_cancel_Click1(object sender, EventArgs e)
    {
        try
        {
            txt_address.Text = string.Empty;
            txt_con_password.Text = string.Empty;
            txt_contact.Text = string.Empty;
            txt_email.Text = string.Empty;
            txt_password.Text = string.Empty;
            txt_user_name.Text = string.Empty;
        }
        catch (Exception ex)
        {


        }
    }
}