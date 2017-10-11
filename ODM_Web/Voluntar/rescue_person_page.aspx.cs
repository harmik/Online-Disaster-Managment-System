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

public partial class Voluntar_rescue_person_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            changepanel(1, 0);
            binddata("");
            bindddlvoluntarteam();
            bindddllost();
            ddl_pagesize.Items.Insert(0, new ListItem("10", "0"));
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

        tbl_rescue_person_BAL objbal = new tbl_rescue_person_BAL();
        DataSet ds = objbal.getdata(query);
        gvlist.DataSource = ds;
        gvlist.DataBind();
    }

    protected void btn_img_edit_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton btn_img_edit = (ImageButton)sender;
        SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["dbconnect"]);
        string query = "select_tbl_rescue_person";
        SqlCommand cm = new SqlCommand(query, cn);
        cm.CommandType = CommandType.StoredProcedure;

        cm.Parameters.AddWithValue("@cnd", " where int_rescue_person_id=" + btn_img_edit.CommandArgument);

        ViewState["id"] = btn_img_edit.CommandArgument;

        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataSet ds = new DataSet();

        da.Fill(ds);



        if (ds.Tables[0].Rows.Count > 0)
        {

            btn_add.Visible = true;
            btn_update.Visible = false;

            ddl_lost_person_name.ClearSelection();
            ddl_lost_person_name.Items.FindByValue(ds.Tables[0].Rows[0]["int_lost_id"].ToString()).Selected = true;

            txt_address.Text = ds.Tables[0].Rows[0]["str_address"].ToString();
            txt_contact.Text = ds.Tables[0].Rows[0]["int_contact"].ToString();
            txt_description.Text = ds.Tables[0].Rows[0]["str_description"].ToString();
            ddl_voluntar_team_name.ClearSelection();
            ddl_voluntar_team_name.Items.FindByValue(ds.Tables[0].Rows[0]["int_voluntar_team_id"].ToString()).Selected = true;

            
        }

        changepanel(0, 1);

        btn_add.Visible = false;
        btn_update.Visible = true;


    }

    protected void btn_img_delete_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton btn_img_delete = (ImageButton)sender;
        SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["dbconnect"]);
        SqlCommand cm = new SqlCommand("delete_tbl_rescue_person", cn);
        cm.CommandType = CommandType.StoredProcedure;

        cm.Parameters.AddWithValue("@int_rescue_person_id", btn_img_delete.CommandArgument);


        cn.Open();
        int val = Convert.ToInt16(cm.ExecuteScalar());
        cn.Close();

        if (val > 0)
        {
            //lblmsg.Text = "Data successfully deleted";
            binddata("");
        }
    }

    protected void btn_update_Click(object sender, EventArgs e)
    {
        tbl_rescue_person_BAL objbal = new tbl_rescue_person_BAL();
        tbl_rescue_person_DAL objdal = new tbl_rescue_person_DAL();

        objdal.int_rescue_person_id = Convert.ToInt16(ViewState["id"]);
        objdal.int_voluntar_team_id = Convert.ToInt16(ddl_voluntar_team_name.SelectedItem.Value);
        objdal.int_lost_id = Convert.ToInt16(ddl_lost_person_name.SelectedItem.Value);

        objdal.str_address = txt_address.Text;
        objdal.int_contact = Convert.ToInt64(txt_contact.Text);
        objdal.str_description = txt_description.Text;
        lblmsg.Visible = true;
        int val = objbal.update_data(objdal);

        objbal.update_data(objdal);
        binddata("");
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
        changepanel(1, 0);
    }

    protected void btn_rcd_add_Click(object sender, EventArgs e)
    {

        lblmsg.Visible = false;
        btn_add.Visible = true;
        btn_update.Visible = false;

        changepanel(0, 1);
        ddl_lost_person_name.ClearSelection();
        txt_address.Text = string.Empty;
        txt_contact.Text = string.Empty;
        txt_description.Text = string.Empty;
        ddl_voluntar_team_name.ClearSelection();
        
    }

    protected void lb_rcd_Click(object sender, EventArgs e)
    {

        changepanel(1, 0);

    }

    protected void btn_add_Click1(object sender, EventArgs e)
    {
        tbl_rescue_person_BAL objbal = new tbl_rescue_person_BAL();
        tbl_rescue_person_DAL objdal = new tbl_rescue_person_DAL();


        objdal.int_voluntar_team_id = Convert.ToInt16(ddl_voluntar_team_name.SelectedItem.Value);
        objdal.int_lost_id = Convert.ToInt16(ddl_lost_person_name.SelectedItem.Value);

        objdal.str_address = txt_address.Text;
        objdal.int_contact = Convert.ToInt64(txt_contact.Text);
        objdal.str_description = txt_description.Text;
        lblmsg.Visible = true;
        int val = objbal.insert_data(objdal);
        if (val > 0)
        {
            lblmsg.Text = "successfully inserted";
            lblmsg.ForeColor = System.Drawing.Color.Green;
            binddata("");
        }
        else if (val == -1)
        {

            lblmsg.Text = "name duplicate is not allowed";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }



        changepanel(1, 0);

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
            string query = "where str_rescue_person_name like '" + txt_search_box.Text + "%'";
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

    private void bindddlvoluntarteam()
    {
        tbl_voluntar_team_BAL objbal = new tbl_voluntar_team_BAL();
        DataSet ds = objbal.getdata("");

        ddl_voluntar_team_name.DataValueField = "int_voluntar_team_id";
        ddl_voluntar_team_name.DataTextField = "str_voluntar_team_name";

        ddl_voluntar_team_name.DataSource = ds;
        ddl_voluntar_team_name.DataBind();

        ddl_voluntar_team_name.Items.Insert(0, new ListItem("---select---", "0"));

    }
    private void bindddllost()
    {
        tbl_lost_BAL objbal = new tbl_lost_BAL();
        DataSet ds = objbal.getdata("");

        ddl_lost_person_name.DataValueField = "int_lost_id";
        ddl_lost_person_name.DataTextField = "str_name";

        ddl_lost_person_name.DataSource = ds;
        ddl_lost_person_name.DataBind();

        ddl_lost_person_name.Items.Insert(0, new ListItem("---select---", "0"));

    }
    protected void btn_select_delete_Click(object sender, EventArgs e)
    {

        tbl_rescue_person_BAL objbal = new tbl_rescue_person_BAL();
        tbl_rescue_person_DAL objdal = new tbl_rescue_person_DAL();

        foreach (GridViewRow row in gvlist.Rows)
        {
            var check = row.FindControl("chkselect") as CheckBox;
            if (check.Checked)
            {
                var id = row.FindControl("Hiddenid") as HiddenField;
                objdal.int_rescue_person_id = Convert.ToInt16(id.Value);
                objbal.delete_data(objdal);
                binddata("");


            }



        }
    }

}
