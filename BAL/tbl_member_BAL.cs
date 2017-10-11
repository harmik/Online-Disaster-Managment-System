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
    public class tbl_member_BAL
    {
        SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["dbconnect"]);

        public int insert_data(tbl_member_DAL objdal)
        {
            SqlCommand cm = new SqlCommand("insert_tbl_member", cn);
            cm.CommandType = CommandType.StoredProcedure;



            cm.Parameters.AddWithValue("@int_disaster_id", objdal.int_disaster_id);
            cm.Parameters.AddWithValue("@str_member_name", objdal.str_member_name);
            cm.Parameters.AddWithValue("@int_designation_id", objdal.int_designation_id);
            cm.Parameters.AddWithValue("@str_current_working", objdal.str_current_working);
            cm.Parameters.AddWithValue("@str_address", objdal.str_address);
            cm.Parameters.AddWithValue("@int_contact", objdal.int_contact);
            cm.Parameters.AddWithValue("@str_email", objdal.str_email);
            cm.Parameters.AddWithValue("@str_password", objdal.str_password);
            

            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            return val;
        }

        public int update_data(tbl_member_DAL objdal)
        {
            SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["dbconnect"]);
            SqlCommand cm = new SqlCommand("update_tbl_member", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_member_id", objdal.int_member_id);
            cm.Parameters.AddWithValue("@int_disaster_id", objdal.int_disaster_id);
            cm.Parameters.AddWithValue("@str_member_name", objdal.str_member_name);
            cm.Parameters.AddWithValue("@int_designation_id", objdal.int_designation_id);
            cm.Parameters.AddWithValue("@str_current_working", objdal.str_current_working);
            cm.Parameters.AddWithValue("@str_address", objdal.str_address);
            cm.Parameters.AddWithValue("@int_contact", objdal.int_contact);
            cm.Parameters.AddWithValue("@str_email", objdal.str_email);
            cm.Parameters.AddWithValue("@str_password", objdal.str_password);

            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();

            da.Fill(ds);
            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteNonQuery());
            cn.Close();
            return val; 
        }

        public int delete_data(tbl_member_DAL objdal)
        {
            SqlCommand cm = new SqlCommand("delete_tbl_member", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_member_id", objdal.int_member_id);

            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            return val;
        }

        public DataSet getdata(string query)
        {
            SqlCommand cm = new SqlCommand("select_tbl_member", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@cnd", query);

            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

    }
}
