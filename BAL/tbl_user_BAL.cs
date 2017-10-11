using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace BAL
{
    public class tbl_user_BAL
    {
        SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["dbconnect"]);

        public int insert_data(tbl_user_DAL objdal)
        {
            SqlCommand cm = new SqlCommand("insert_tbl_user", cn);
            cm.CommandType = CommandType.StoredProcedure;



            cm.Parameters.AddWithValue("@str_user_name", objdal.str_user_name);
            cm.Parameters.AddWithValue("@str_address", objdal.str_address);
            cm.Parameters.AddWithValue("@int_contact", objdal.int_contact);
            cm.Parameters.AddWithValue("@str_email", objdal.str_email);
            cm.Parameters.AddWithValue("@str_password", objdal.str_password);
            
            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            return val;
        }

        public int update_data(tbl_user_DAL objdal)
        {
            SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["dbconnect"]);
            SqlCommand cm = new SqlCommand("update_tbl_user", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_user_id", objdal.int_user_id);
            cm.Parameters.AddWithValue("@str_user_name", objdal.str_user_name);
            cm.Parameters.AddWithValue("@str_address", objdal.str_address);
            cm.Parameters.AddWithValue("@int_contact", objdal.int_contact);
            cm.Parameters.AddWithValue("@str_email", objdal.str_email);
    

            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();

            da.Fill(ds);
            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteNonQuery());
            cn.Close();
            return val;
        }

        public int delete_data(tbl_user_DAL objdal)
        {
            SqlCommand cm = new SqlCommand("delete_tbl_user", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_user_id", objdal.int_user_id);

            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            return val;
        }

        public DataSet getdata(string query)
        {
            SqlCommand cm = new SqlCommand("select_tbl_user", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@cnd", query);

            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }




        public int update_pass(tbl_user_DAL objdal)
        {
            SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["dbconnect"]);
            SqlCommand cm = new SqlCommand("update_tbl_user_change", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_user_id", objdal.int_user_id);
            cm.Parameters.AddWithValue("@str_password", objdal.str_password);

            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();

            da.Fill(ds);
            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteNonQuery());
            cn.Close();
            return val;
        }


    }
}
