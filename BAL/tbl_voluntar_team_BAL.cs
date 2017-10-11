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
    public class tbl_voluntar_team_BAL
    {
        SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["dbconnect"]);

        public int insert_data(tbl_voluntar_team_DAL objdal)
        {
            SqlCommand cm = new SqlCommand("insert_tbl_voluntar_team", cn);
            cm.CommandType = CommandType.StoredProcedure;

           
            cm.Parameters.AddWithValue("@date_voluntar_date", objdal.date_voluntar_date);
            cm.Parameters.AddWithValue("@bit_active", objdal.bit_active);
            cm.Parameters.AddWithValue("@int_member_id", objdal.int_member_id);
            cm.Parameters.AddWithValue("@str_voluntar_team_name", objdal.str_voluntar_team_name);
            
            

            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            return val;
        }

        public int update_data(tbl_voluntar_team_DAL objdal)
        {
            SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["dbconnect"]);
            SqlCommand cm = new SqlCommand("update_tbl_voluntar_team", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_voluntar_team_id", objdal.int_voluntar_team_id);
            cm.Parameters.AddWithValue("@str_voluntar_team_name", objdal.str_voluntar_team_name);
            cm.Parameters.AddWithValue("@date_voluntar_date", objdal.date_voluntar_date);
            cm.Parameters.AddWithValue("@bit_active", objdal.bit_active);
            cm.Parameters.AddWithValue("@int_member_id", objdal.int_member_id);

            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();

            da.Fill(ds);
            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteNonQuery());
            cn.Close();
            return val;
        }

        public int delete_data(tbl_voluntar_team_DAL objdal)
        {
            SqlCommand cm = new SqlCommand("delete_tbl_voluntar_team", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_voluntar_team_id", objdal.int_voluntar_team_id);

            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            return val;
        }

        public DataSet getdata(string query)
        {
            SqlCommand cm = new SqlCommand("select_tbl_voluntar_team", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@cnd", query);

            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

    }
}
