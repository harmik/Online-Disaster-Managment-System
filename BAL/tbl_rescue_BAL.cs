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
    public class tbl_rescue_BAL
    {
        SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["dbconnect"]);

        public int insert_data(tbl_rescue_DAL objdal)
        {
            
            SqlCommand cm = new SqlCommand("insert_tbl_rescue", cn);
            cm.CommandType = CommandType.StoredProcedure;


            cm.Parameters.AddWithValue("@int_voluntar_team_id", objdal.int_voluntar_team_id);
            cm.Parameters.AddWithValue("@str_rescue_place", objdal.str_rescue_place);
            cm.Parameters.AddWithValue("@date_rescue_date", objdal.date_rescue_date);




            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            return val;
        }

        public int update_data(tbl_rescue_DAL objdal)
        {
            SqlCommand cm = new SqlCommand("update_tbl_rescue", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_rescue_id", objdal.int_rescue_id);
            cm.Parameters.AddWithValue("@int_voluntar_team_id", objdal.int_voluntar_team_id);
            cm.Parameters.AddWithValue("@str_rescue_place", objdal.str_rescue_place);
            cm.Parameters.AddWithValue("@date_rescue_date", objdal.date_rescue_date);
            

            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            return val;
        }

        public int delete_data(tbl_rescue_DAL objdal)
        {
            SqlCommand cm = new SqlCommand("delete_tbl_rescue", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_rescue_id", objdal.int_rescue_id);

            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            return val;
        }

        public DataSet getdata(string query)
        {
            SqlCommand cm = new SqlCommand("select_tbl_rescue", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@cnd", query);

            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

    }
}
