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
    public class tbl_disaster_master_BAL
    {
        SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["dbconnect"]);

        public int insert_data(tbl_disaster_master_DAL objdal)
        {
           
            SqlCommand cm = new SqlCommand("insert_tbl_disaster_master", cn);
            cm.CommandType = CommandType.StoredProcedure;
            
            
            cm.Parameters.AddWithValue("@str_disaster_name", objdal.str_disaster_name);
            cm.Parameters.AddWithValue("@date_active_date", objdal.date_active_date);
            cm.Parameters.AddWithValue("@date_end_date", objdal.date_end_date);
            cm.Parameters.AddWithValue("@bit_status", objdal.bit_status);
            cm.Parameters.AddWithValue("@str_place", objdal.str_place);
            cm.Parameters.AddWithValue("@str_latitude", objdal.str_latitude);
            cm.Parameters.AddWithValue("@str_longitude", objdal.str_longitude);
            cm.Parameters.AddWithValue("@int_disaster_type_id", objdal.int_disaster_type_id);
            cm.Parameters.AddWithValue("@str_img", objdal.str_img);
            

           
            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteNonQuery());
            cn.Close();
            return val; 
        }

        public int update_data(tbl_disaster_master_DAL objdal)
        {
            SqlCommand cm = new SqlCommand("update_tbl_disaster_master", cn);
            cm.CommandType = CommandType.StoredProcedure;
            cm.Parameters.AddWithValue("@int_disaster_id", objdal.int_disaster_id);
            cm.Parameters.AddWithValue("@str_disaster_name", objdal.str_disaster_name);
            cm.Parameters.AddWithValue("@date_active_date", objdal.date_active_date);
            cm.Parameters.AddWithValue("@date_end_date", objdal.date_end_date);
            cm.Parameters.AddWithValue("@bit_status", objdal.bit_status);
            cm.Parameters.AddWithValue("@str_place", objdal.str_place);
            cm.Parameters.AddWithValue("@str_latitude", objdal.str_latitude);
            cm.Parameters.AddWithValue("@str_longitude", objdal.str_longitude);
            cm.Parameters.AddWithValue("@int_disaster_type_id", objdal.int_disaster_type_id);
            cm.Parameters.AddWithValue("@str_img", objdal.str_img);

            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            return val;
        }

        public int delete_data(tbl_disaster_master_DAL objdal)
        {
            SqlCommand cm = new SqlCommand("delete_tbl_disaster_master", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_disaster_id", objdal.int_disaster_id);

            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            return val;
        }

        public DataSet getdata(string query)
        {
            SqlCommand cm = new SqlCommand("select_tbl_disaster_master", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@cnd", query);

            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

    }
}
