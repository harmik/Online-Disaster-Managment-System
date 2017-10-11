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
using System.Security.Cryptography;
using System.IO;
public partial class Visitors_user_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] == null)
        {
            Response.Redirect("home_page.aspx");
        }


        if (IsPostBack == false)
        {
            changepanel(1, 0, 0);
            pnl_view_user_details.Visible = true;
            pnl_edit_user.Visible = false;
            binddata("");
        }


    }

    public void binddata(string query)
    {

        tbl_user_BAL objbal = new tbl_user_BAL();
        DataSet ds = objbal.getdata(query);



        //DataBind();

        lblname.Text = Session["unm"].ToString();
        lbladd.Text = Session["add"].ToString();
        lblcont.Text = Session["con"].ToString();
        lblemail.Text = Session["email"].ToString();



    }

    protected void btn_update_Click(object sender, EventArgs e)
    {

        tbl_user_BAL objbal = new tbl_user_BAL();
        tbl_user_DAL objdal = new tbl_user_DAL();


        lblmsg.Visible = true;
        objdal.int_user_id = Convert.ToInt16(Session["uid"]);
        objdal.str_user_name = txt_name.Text;
        objdal.str_address = txt_add.Text;
        objdal.int_contact = Convert.ToInt64(txt_con.Text);
        objdal.str_email = txt_email.Text;


        int val = objbal.update_data(objdal);

        objbal.update_data(objdal);
        binddata("");


        if (val > 0)
        {
            lblmsg.Text = "Your data is successfully updated";
            lblmsg.ForeColor = System.Drawing.Color.Green;


        }
        else
        {
            lblmsg.Text = "Error in Process,try again";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }







    }


    private void changepanel(int det, int list, int cng)
    {
        if (det == 1)
        {

            pnl_view_user_details.Visible = true;
            pnl_edit_user.Visible = false;
            pnl_changepwd.Visible = false;
        }
        else if (list == 1)
        {
            pnl_view_user_details.Visible = false;
            pnl_edit_user.Visible = true;
            pnl_changepwd.Visible = false;
        }
        else
        {
            pnl_view_user_details.Visible = false;
            pnl_edit_user.Visible = false;
            pnl_changepwd.Visible = true;
        }
    }



    protected void btn_edit_profile_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["dbconnect"]);
        string query = "select_tbl_user";
        SqlCommand cm = new SqlCommand(query, cn);
        cm.CommandType = CommandType.StoredProcedure;
        cm.Parameters.AddWithValue("@cnd", " where int_user_id=" + Session["uid"].ToString());

        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();

        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {



            txt_name.Text = ds.Tables[0].Rows[0]["str_user_name"].ToString();
            txt_add.Text = ds.Tables[0].Rows[0]["str_address"].ToString();
            txt_con.Text = ds.Tables[0].Rows[0]["int_contact"].ToString();
            txt_email.Text = ds.Tables[0].Rows[0]["str_email"].ToString();
        }
        changepanel(0, 1, 0);


    }
    protected void btn_save_Click(object sender, EventArgs e)
    {

        tbl_user_BAL objbal = new tbl_user_BAL();
        tbl_user_DAL objdal = new tbl_user_DAL();

        cryptography objcrypt = new cryptography();

        SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["dbconnect"]);
        string query = "select_tbl_user";
        SqlCommand cm = new SqlCommand(query, cn);
        cm.CommandType = CommandType.StoredProcedure;

        cm.Parameters.AddWithValue("@cnd", " where int_user_id=" + Session["uid"].ToString());


        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();

        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {


            string pwd = objcrypt.Decrypt(ds.Tables[0].Rows[0]["str_password"].ToString());

            if (pwd == old_pass.Text)
            {


                objdal.int_user_id = Convert.ToInt16(Session["uid"]);



                string str = objcrypt.Encrypt(new_pass.Text);


                objdal.str_password = str;

                int val = objbal.update_pass(objdal);

                objbal.update_pass(objdal);


                if (val > 0)
                {
                    lblmsg.Text = "your password is successfully updated.";
                    lblmsg.ForeColor = System.Drawing.Color.Green;


                }
                else
                {
                    lblmsg.Text = "Error in Process,try again.";
                    lblmsg.ForeColor = System.Drawing.Color.Red;
                }

            }
            else
            {
                lblmsg.Text = "your have entered wrong password.";
                lblmsg.ForeColor = System.Drawing.Color.Red;
            }
        }
        changepanel(1, 0, 0);
    }


    protected void l_back_Click(object sender, EventArgs e)
    {
        tbl_user_BAL objbal = new tbl_user_BAL();
        tbl_user_DAL objdal = new tbl_user_DAL();


        SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["dbconnect"]);
        string query = "select_tbl_user";
        SqlCommand cm = new SqlCommand(query, cn);
        cm.CommandType = CommandType.StoredProcedure;
        cm.Parameters.AddWithValue("@cnd", " where int_user_id=" + Session["uid"].ToString());

        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();

        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {

            lblname.Text = ds.Tables[0].Rows[0]["str_user_name"].ToString();
            lbladd.Text = ds.Tables[0].Rows[0]["str_address"].ToString();
            lblcont.Text = ds.Tables[0].Rows[0]["int_contact"].ToString();
            lblemail.Text = ds.Tables[0].Rows[0]["str_email"].ToString();
        }

        changepanel(1, 0, 0);
        lblmsg.Visible = false;
    }
    protected void lb_rcd_Click(object sender, EventArgs e)
    {
        changepanel(0, 0, 1);
    }
}


