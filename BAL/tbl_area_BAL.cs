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
    
    public class tbl_area_BAL
    {
        SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["dbconnect"]);
        
        public int insert_data(tbl_area_DAL objdal)
        {
            SqlCommand cm = new SqlCommand("insert_tbl_area", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_district_id", objdal.int_district_id);
            cm.Parameters.AddWithValue("@str_area_name",objdal.str_area_name);
            
                cn.Open();
                   int val=Convert.ToInt16(cm.ExecuteScalar());
                 cn.Close();

            return val;
        }

        public int update_data(tbl_area_DAL objdal)
        {
            SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["dbconnect"]);
            SqlCommand cm = new SqlCommand("update_tbl_area", cn);
            cm.CommandType = CommandType.StoredProcedure;
            cm.Parameters.AddWithValue("@int_area_id", objdal.int_area_id);
            cm.Parameters.AddWithValue("@str_area_name", objdal.str_area_name);
            cm.Parameters.AddWithValue("@int_district_id", objdal.int_district_id);
            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();

            da.Fill(ds);
            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteNonQuery());
            cn.Close();
            return val;      
        }

        public int delete_data(tbl_area_DAL objdal)
        {
            SqlCommand cm = new SqlCommand("delete_tbl_area", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_area_id", objdal.int_area_id);
            
            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            return val;    
        }

        public DataSet getdata(string query)
        {
            SqlCommand cm = new SqlCommand("select_tbl_area", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@cnd", query);

            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}
