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
    public class tbl_rescue_place_victim_BAL
    {
        SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["dbconnect"]);

        public int insert_data(tbl_rescue_place_victim_DAL objdal)
        {
            SqlCommand cm = new SqlCommand("insert_tbl_rescue_place_victim", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@str_victim_name", objdal.str_victim_name);
            cm.Parameters.AddWithValue("@int_victim_age", objdal.int_victim_age);
            cm.Parameters.AddWithValue("@str_gender", objdal.str_gender);
            cm.Parameters.AddWithValue("@str_address", objdal.str_address);
            cm.Parameters.AddWithValue("@str_victim_image_path", objdal.str_victim_image_path);

            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            return val;
        }

        public int update_data(tbl_rescue_place_victim_DAL objdal)
        {
            SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["dbconnect"]);
            SqlCommand cm = new SqlCommand("update_tbl_rescue_place_victim", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_victim_id", objdal.int_victim_id);
            cm.Parameters.AddWithValue("@str_victim_name", objdal.str_victim_name);
            cm.Parameters.AddWithValue("@int_victim_age", objdal.int_victim_age);
            cm.Parameters.AddWithValue("@str_gender", objdal.str_gender);
            cm.Parameters.AddWithValue("@str_address", objdal.str_address);
            cm.Parameters.AddWithValue("@str_victim_image_path", objdal.str_victim_image_path);



            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();

            da.Fill(ds);
            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteNonQuery());
            cn.Close();
            return val; 

        }

        public int delete_data(tbl_rescue_place_victim_DAL objdal)
        {
            SqlCommand cm = new SqlCommand("delete_tbl_rescue_place_victim", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_victim_id", objdal.int_victim_id);

            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            return val;
        }

        public DataSet getdata(string query)
        {
            SqlCommand cm = new SqlCommand("select_tbl_rescue_place_victim", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@cnd", query);

            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

    }
}
