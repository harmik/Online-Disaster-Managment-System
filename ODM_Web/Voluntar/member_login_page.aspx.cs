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
public partial class Voluntar_member_login_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        try
        {
            tbl_member_BAL objbal = new tbl_member_BAL();
            cryptography objcrypt = new cryptography();

            string query = "where str_email='" + txt_member_name.Text + "'";

            DataSet ds = objbal.getdata(query);


            if (ds.Tables[0].Rows.Count > 0)
            {
                string str = objcrypt.Decrypt(ds.Tables[0].Rows[0]["str_password"].ToString());

                if (str.Equals(txt_password.Text))
                {

                    Session["vname"] = txt_member_name.Text;
                    Session["vtype"] = "m";
                    Response.Redirect("inquiry_reply_page.aspx");
                }
            }
        }
        catch (Exception ex)
        {
            
            
        }
    }
}