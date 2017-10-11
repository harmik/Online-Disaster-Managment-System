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
    public class tbl_inquiry_BAL
    {
        SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["dbconnect"]);

        public int insert_data(tbl_inquiry_DAL objdal)
        {
            SqlCommand cm = new SqlCommand("insert_tbl_inquiry", cn);
            cm.CommandType = CommandType.StoredProcedure;



            cm.Parameters.AddWithValue("@int_user_id", objdal.int_user_id);
            cm.Parameters.AddWithValue("@str_description", objdal.str_description);
            cm.Parameters.AddWithValue("@date_date", objdal.date_date);
            cm.Parameters.AddWithValue("@str_time", objdal.str_time);
            //cm.Parameters.AddWithValue("@int_voluntar_id", objdal.int_voluntar_id);
            //cm.Parameters.AddWithValue("@str_ans_description", objdal.str_ans_description);
            //cm.Parameters.AddWithValue("@date_ans_date", objdal.date_ans_date);
            //cm.Parameters.AddWithValue("@str_ans_time", objdal.str_ans_time);
            

            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            return val;
        }

        public int update_data(tbl_inquiry_DAL objdal)
        {
            SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["dbconnect"]);
            SqlCommand cm = new SqlCommand("demo", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_inquiry_id", objdal.int_inquiry_id);
            //cm.Parameters.AddWithValue("@int_user_id", objdal.int_user_id);
            //cm.Parameters.AddWithValue("@str_description", objdal.str_description);
            //cm.Parameters.AddWithValue("@date_date", objdal.date_date);
            //cm.Parameters.AddWithValue("@str_time", objdal.str_time);
            cm.Parameters.AddWithValue("@int_voluntar_id", objdal.int_voluntar_id);
            cm.Parameters.AddWithValue("@str_ans_description", objdal.str_ans_description);
            cm.Parameters.AddWithValue("@date_ans_date", objdal.date_ans_date);
            cm.Parameters.AddWithValue("@str_ans_time", objdal.str_ans_time);


            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();

            da.Fill(ds);
            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteNonQuery());
            cn.Close();
            return val; 
        }

        public int delete_data(tbl_inquiry_DAL objdal)
        {
            SqlCommand cm = new SqlCommand("delete_tbl_inquiry", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_inquiry_id", objdal.int_inquiry_id);

            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            return val;
        }

        public DataSet getdata(string query)
        {
            SqlCommand cm = new SqlCommand("select_tbl_inquiry", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@cnd", query);

            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

    }
}
