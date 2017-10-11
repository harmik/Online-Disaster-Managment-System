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
    public class tbl_state_BAL
    {
        SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["dbconnect"]);

        public int insert_data(tbl_state_DAL objdal)
        {
            SqlCommand cm = new SqlCommand("insert_tbl_state", cn);
            cm.CommandType = CommandType.StoredProcedure;



            cm.Parameters.AddWithValue("@str_state_name", objdal.str_state_name);
            
            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            return val;
        }

        public int update_data(tbl_state_DAL objdal)
        {
            SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["dbconnect"]);
            SqlCommand cm = new SqlCommand("update_tbl_state",cn);
            cm.CommandType = CommandType.StoredProcedure;
            cm.Parameters.AddWithValue("@int_state_id",objdal.int_state_id);
            cm.Parameters.AddWithValue("@str_state_name", objdal.str_state_name);
            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds= new DataSet();

            da.Fill(ds);
            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteNonQuery());
            cn.Close();
            return val;
        }

        public int delete_data(tbl_state_DAL objdal)
        {
            SqlCommand cm = new SqlCommand("delete_tbl_state", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_state_id", objdal.int_state_id);

            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            return val;
        }

        public DataSet getdata(string query)
        {
            SqlCommand cm = new SqlCommand("select_tbl_state", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@cnd", query);

            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

    }
}
