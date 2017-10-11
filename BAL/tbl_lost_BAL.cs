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
    public class tbl_lost_BAL
    {
        SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["dbconnect"]);

        public int insert_data(tbl_lost_DAL objdal)
        {
            SqlCommand cm = new SqlCommand("insert_tbl_lost", cn);
            cm.CommandType = CommandType.StoredProcedure;



            cm.Parameters.AddWithValue("@int_user_id", objdal.int_user_id);
            cm.Parameters.AddWithValue("@str_name", objdal.str_name);
            cm.Parameters.AddWithValue("@date_date", objdal.date_date);
            cm.Parameters.AddWithValue("@str_time", objdal.str_time);
            cm.Parameters.AddWithValue("@str_where_lost", objdal.str_where_lost);
            //cm.Parameters.AddWithValue("@bit_status", objdal.bit_status);
            //cm.Parameters.AddWithValue("@date_find_date", objdal.date_find_date);
            //cm.Parameters.AddWithValue("@str_find_time", objdal.str_find_time);
            cm.Parameters.AddWithValue("@int_age", objdal.int_age);
            cm.Parameters.AddWithValue("@str_img_path", objdal.str_img_path);
            cm.Parameters.AddWithValue("@str_gender", objdal.str_gender);


            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            return val;
        }

        public int update_data(tbl_lost_DAL objdal)
        {
            SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["dbconnect"]);
            SqlCommand cm = new SqlCommand("update_tbl_lost", cn);
            cm.CommandType = CommandType.StoredProcedure;
            cm.Parameters.AddWithValue("@int_lost_id", objdal.int_lost_id);
            //cm.Parameters.AddWithValue("@int_user_id", objdal.int_user_id);
            //cm.Parameters.AddWithValue("@str_name", objdal.str_name);
            //cm.Parameters.AddWithValue("@date_date", objdal.date_date);
            //cm.Parameters.AddWithValue("@str_time", objdal.str_time);
            //cm.Parameters.AddWithValue("@str_where_lost", objdal.str_where_lost);
            cm.Parameters.AddWithValue("@bit_status", objdal.bit_status);
            cm.Parameters.AddWithValue("@date_find_date", objdal.date_find_date);
            cm.Parameters.AddWithValue("@str_find_time", objdal.str_find_time);
            //cm.Parameters.AddWithValue("@int_age", objdal.int_age);
            //cm.Parameters.AddWithValue("@str_img_path", objdal.str_img_path);
            //cm.Parameters.AddWithValue("@str_gender", objdal.str_gender);


            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();

            da.Fill(ds);
            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteNonQuery());
            cn.Close();
            return val;
        }

        public int delete_data(tbl_lost_DAL objdal)
        {
            SqlCommand cm = new SqlCommand("delete_tbl_lost", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_lost_id", objdal.int_lost_id);

            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            return val;
        }

        public DataSet getdata(string query)
        {
            SqlCommand cm = new SqlCommand("select_tbl_lost", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@cnd", query);

            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

    }
}
