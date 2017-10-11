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
public partial class Voluntar_inquiry_reply_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       //if (Session["uname"] == null)
       //    Response.Redirect("login_voluntar_page.aspx");

        if (IsPostBack == false)
        {
            changepanel(1, 0);
            binddata("");
            bindddlvoluntar();
            ddl_pagesize.Items.Insert(0, new ListItem("5", "0"));
        }



    }
    private void changepanel(int det, int list)
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
    public void binddata(string query)
    {

        tbl_inquiry_BAL objbal = new tbl_inquiry_BAL();
        DataSet ds = objbal.getdata(query);
        gvlist.DataSource = ds;
        gvlist.DataBind();
    }

    protected void btn_img_edit_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton btn_img_edit = (ImageButton)sender;
        SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["dbconnect"]);
        string query = "select_tbl_inquiry";
        SqlCommand cm = new SqlCommand(query, cn);
        cm.CommandType = CommandType.StoredProcedure;

        cm.Parameters.AddWithValue("@cnd", " where int_inquiry_id=" + btn_img_edit.CommandArgument);

        ViewState["id"] = btn_img_edit.CommandArgument;

        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();

        da.Fill(ds);



        if (ds.Tables[0].Rows.Count > 0)
        {

            txt_User_name.Text = ds.Tables[0].Rows[0]["str_user_name"].ToString();
            //txt_User_name.Text = 
            txt_description.Text = ds.Tables[0].Rows[0]["str_description"].ToString();
            txt_date.Text = Convert.ToDateTime(ds.Tables[0].Rows[0]["date_date"]).ToString("dd/MM/yyyy");
            txt_time.Text = ds.Tables[0].Rows[0]["str_time"].ToString();
            //txt_voluntar_name.Text = Convert.ToString(Session["vname"]);
            //txt_ans_description.Text = ds.Tables[0].Rows[0]["str_ans_description"].ToString();
            //txt_date.Text = Convert.ToDateTime(ds.Tables[0].Rows[0]["date_ans_date"]).ToString("dd/MM/yyyy");
            //txt_ans_time.Text =ds.Tables[0].Rows[0]["str_ans_time"].ToString();




          

        }

        changepanel(0, 1);

       
        btn_update.Visible = true;

    }

    protected void btn_update_Click(object sender, EventArgs e)
    {


        tbl_inquiry_BAL objbal = new tbl_inquiry_BAL();
        tbl_inquiry_DAL objdal = new tbl_inquiry_DAL();

        objdal.int_inquiry_id = Convert.ToInt16(ViewState["id"]);
        //objdal.int_user_id =txt_User_name.Text;
        //objdal.str_description = txt_description.Text;
        //objdal.date_date = Convert.ToDateTime(txt_date.Text);
        //objdal.str_time = txt_time.Text;
        //objdal.int_voluntar_id = Convert.ToInt16(txt_voluntar_name.Text);
        objdal.int_voluntar_id = Convert.ToInt16(ddl_voluntar.SelectedItem.Value);
        objdal.str_ans_description = txt_ans_description.Text;
        objdal.date_ans_date = Convert.ToDateTime(txt_ans_date.Text);
        objdal.str_ans_time = txt_ans_time.Text;
       
        //lblmsg.Visible = true;

        int val = objbal.update_data(objdal);
        objbal.update_data(objdal);
        binddata("");
        changepanel(1, 0);
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



    }
    protected void lb_rcd_Click(object sender, EventArgs e)
    {

    }
    protected void gvlist_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvlist.PageIndex = e.NewPageIndex;
        binddata("");


    }
    protected void ddl_pagesize_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblmsg.Visible = false;
        gvlist.PageSize = Convert.ToInt16(ddl_pagesize.SelectedItem.Text);
        binddata("");
    }
    protected void btn_search_Click(object sender, EventArgs e)
    {
        lblmsg.Visible = false;
        if (string.IsNullOrEmpty(txt_search_box.Text) == false)
        {
            string query = "where str_lost_person_name like '" + txt_search_box.Text + "%'";
            binddata(query);
        }
    }
    protected void btn_clear_Click(object sender, EventArgs e)
    {
        lblmsg.Visible = false;
        if (string.IsNullOrEmpty(txt_search_box.Text) == false)
        {
            binddata("");
            txt_search_box.Text = string.Empty;
        }
    }

    protected void btn_logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("login_voluntar_page.aspx");
    }
    private void bindddlvoluntar()
    {
        tbl_voluntar_BAL objbal = new tbl_voluntar_BAL();
        DataSet ds = objbal.getdata("");

        ddl_voluntar.DataValueField = "int_voluntar_id";
        ddl_voluntar.DataTextField = "str_voluntar_name";

        ddl_voluntar.DataSource = ds;
        ddl_voluntar.DataBind();

        ddl_voluntar.Items.Insert(0, new ListItem("---select---", "0"));

    }
}