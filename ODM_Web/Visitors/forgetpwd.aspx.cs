using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Text;
using DAL;
using BAL;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.IO;


public partial class Visitors_forgetpwd : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            binddata("");
        }
        catch (Exception ex)
        {


        }
    }

    public void binddata(string query)
    {

        try
        {
            tbl_user_BAL objbal = new tbl_user_BAL();
            DataSet ds = objbal.getdata(query);
            // gvlist.DataSource = ds;
            // gvlist.DataBind();
        }
        catch (Exception ex)
        {


        }
    }

    protected void btn_sub_Click(object sender, EventArgs e)
    {
        try
        {
            SendMail();

            // int val = objbal.insert_data(objdal);

            // if (val > 0)
            // {


            lblmsg.Text = "Your password is sended to your email address.";
            lblmsg.ForeColor = System.Drawing.Color.Green;
            // }
        }
        catch (Exception ex)
        {


        }
    }

    protected void SendMail()
    {
        try
        {
            cryptography objcrypt = new cryptography();





            SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["dbconnect"]);
            string query = "select_tbl_user";
            SqlCommand cm = new SqlCommand(query, cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@cnd", " where str_email='" + txt_email.Text + "'");


            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();

            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                //string pwd = ds.Tables[0].Rows[0]["str_password"].ToString();

                string pwd = objcrypt.Decrypt(ds.Tables[0].Rows[0]["str_password"].ToString());











                // Gmail Address from where you send the mail
                var fromAddress = "onlinedisastermanagement@gmail.com";
                // any address where the email will be sending
                //var toAddress = "arumugampn@yahoo.com";
                var toAddress = txt_email.Text;
                //Password of your gmail address
                const string fromPassword = "odm!odm!odm";
                // Passing the values and make a email formate to display
                string subject = "Forget Password";
                StringBuilder str = new StringBuilder();

                StringBuilder sb = new StringBuilder();
                sb.Append("Your Password is ");
                sb.Append(pwd);
                //sb.Append("<head></head>");
                //sb.Append("<body>");
                //sb.Append("<div>My Test Div </div>");
                //sb.Append("</body>");
                //sb.Append("</html>");
                //str.AppendLine("WelCome to Resume Maker Site.");
                //str.AppendLine("\n");
                //str.AppendFormat("Click <a href='{0}'>here</a> To activate yourself.", "https://www.google.co.in/?gws_rd=cr&ei=KiXnUqfsCsmOrQf_x4GYAg");

                // smtp settings
                var smtp = new System.Net.Mail.SmtpClient();
                {
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                    smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                    smtp.Timeout = 20000;
                }
                // Passing values to smtp object
                smtp.Send(fromAddress, toAddress, subject, sb.ToString());
            }
        }
        catch (Exception ex)
        {


        }

    }
}