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
    public class tbl_news_BAL
    {

        SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["dbconnect"]);

        public int insert_data(tbl_news_DAL objdal)
        {
            SqlCommand cm = new SqlCommand("insert_tbl_news", cn);
            cm.CommandType = CommandType.StoredProcedure;

            
            cm.Parameters.AddWithValue("@str_news_title", objdal.str_news_title);
            cm.Parameters.AddWithValue("@str_short_desc", objdal.str_short_desc);
            cm.Parameters.AddWithValue("@str_long_desc", objdal.str_long_desc);
            cm.Parameters.AddWithValue("@date_date", objdal.date_date);

            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            return val;
        }

        public int update_data(tbl_news_DAL objdal)
        {
            SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["dbconnect"]);
            SqlCommand cm = new SqlCommand("update_tbl_news", cn);
            cm.CommandType = CommandType.StoredProcedure;
            cm.Parameters.AddWithValue("@int_news_id", objdal.int_news_id);
            cm.Parameters.AddWithValue("@str_news_title", objdal.str_news_title);
            cm.Parameters.AddWithValue("@str_short_desc", objdal.str_short_desc);
            cm.Parameters.AddWithValue("@str_long_desc", objdal.str_long_desc);
            cm.Parameters.AddWithValue("@date_date", objdal.date_date);

            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();

            da.Fill(ds);
            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteNonQuery());
            cn.Close();
            return val;
        }

        public int delete_data(tbl_news_DAL objdal)
        {
            SqlCommand cm = new SqlCommand("delete_tbl_news", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_news_id", objdal.int_news_id);

            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            return val;
        }

        public DataSet getdata(string query)
        {
            SqlCommand cm = new SqlCommand("select_tbl_news", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@cnd", query);

            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }

}
