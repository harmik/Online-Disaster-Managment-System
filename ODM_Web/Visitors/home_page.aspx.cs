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
public partial class Visitors_home_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            bindlost("");
            bindnews("");
        }
        catch (Exception ex)
        {


        }
    }
    private void bindlost(string query)
    {
        try
        {
            tbl_disaster_master_BAL objbal = new tbl_disaster_master_BAL();
            DataSet ds = objbal.getdata(query);

            ddl_place.DataSource = ds;
            ddl_place.DataBind();
        }
        catch (Exception ex)
        {


        }
    }
    private void bindnews(string query)
    {
        try
        {
            tbl_news_BAL objbal = new tbl_news_BAL();
            DataSet ds = objbal.getdata(query);

            ddl_news.DataSource = ds;
            ddl_news.DataBind();
        }
        catch (Exception ex)
        {


        }
    }
    protected void btn_login_Click(object sender, EventArgs e)
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
                if (str == txt_password.Text)
                {


                    if (str.Equals(txt_password.Text))
                    {

                        Session["uname"] = txt_user_name.Text;
                        Session["uid"] = ds.Tables[0].Rows[0]["int_user_id"];
                        Session["unm"] = ds.Tables[0].Rows[0]["str_user_name"];
                        Session["add"] = ds.Tables[0].Rows[0]["str_address"];
                        Session["con"] = ds.Tables[0].Rows[0]["int_contact"];
                        Session["email"] = ds.Tables[0].Rows[0]["str_email"];
                        Response.Redirect("user_profile.aspx");
                    }
                }

                else
                {
                    lblmsg.Text = "wrong emailid and password ..try again...";
                    lblmsg.ForeColor = System.Drawing.Color.Red;
                }

            }
            else
            {
                lblmsg.Text = "wrong emailid and password ..try again...";
                lblmsg.ForeColor = System.Drawing.Color.Red;
            }

        }
        catch (Exception ex)
        {


        }
    }
}
