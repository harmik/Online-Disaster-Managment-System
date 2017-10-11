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
public partial class Visitors_login_user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["uname"] == null)
        //{
        //    Response.Redirect("login_user.aspx");
        //    Session.Abandon();
        //}
    }
    protected void btn_add_Click1(object sender, EventArgs e)
    {
        try
        {
            tbl_user_BAL objbal = new tbl_user_BAL();
            cryptography objcrypt = new cryptography();

            string query = "where str_email='" + txt_user_name.Text + "'";

            DataSet ds = objbal.getdata(query);


            if (ds.Tables[0].Rows.Count > 0)
            {
                string str = objcrypt.Decrypt(ds.Tables[0].Rows[0]["str_password"].ToString());
                //int cnt = Convert.ToInt16(ds.Tables[0].Rows[0]["int_user_id"]);
                if (str.Equals(txt_password.Text))
                {

                    Session["uname"] = txt_user_name.Text;
                    Session["uid"] = ds.Tables[0].Rows[0]["int_user_id"];
                    Session["unm"] = ds.Tables[0].Rows[0]["str_user_name"];
                    Session["add"] = ds.Tables[0].Rows[0]["str_address"];
                    Session["con"] = ds.Tables[0].Rows[0]["int_contact"];
                    Session["email"] = ds.Tables[0].Rows[0]["str_email"];
                    Response.Redirect("inquiry_page.aspx");
                }

            }
        }
        catch (Exception ex)
        {


        }
    }
}