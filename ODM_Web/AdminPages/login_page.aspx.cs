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


public partial class AdminPages_login1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_add_Click1(object sender, EventArgs e)
    {
        try
        {
            cryptography objcrypt = new cryptography();

            tbl_login_BAL objbal = new tbl_login_BAL();

            string query = " where str_user_name='" + txt_user_name.Text + "'";

            DataSet ds = objbal.getData(query);

            if (ds.Tables[0].Rows.Count > 0)
            {
                string str = objcrypt.Decrypt(ds.Tables[0].Rows[0]["str_password"].ToString());
                if (str.Equals(txt_password.Text))
                {
                    Session["uname"] = txt_user_name.Text;
                    Session["name"] = ds.Tables[0].Rows[0]["str_user_name"].ToString();
                    Session["img"] = ds.Tables[0].Rows[0]["str_img"].ToString();
                    Response.Redirect("home.aspx");
                }
                else
                {
                    lbl_error.Text = "wrong email and password ..try again..";
                    lbl_error.ForeColor = System.Drawing.Color.Red;
                }
            }

        }
        catch (Exception ex)
        {


        }
    }
}