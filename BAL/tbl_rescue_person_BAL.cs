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
    public class tbl_rescue_person_BAL
    {
        SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["dbconnect"]);

        public int insert_data(tbl_rescue_person_DAL objdal)
        {
            SqlCommand cm = new SqlCommand("insert_tbl_rescue_person", cn);
            cm.CommandType = CommandType.StoredProcedure;



            cm.Parameters.AddWithValue("@int_lost_id", objdal.int_lost_id);
            cm.Parameters.AddWithValue("@str_address", objdal.str_address);
            cm.Parameters.AddWithValue("@int_contact", objdal.int_contact);
            cm.Parameters.AddWithValue("@str_description", objdal.str_description);
            cm.Parameters.AddWithValue("@int_voluntar_team_id", objdal.int_voluntar_team_id);
            
            
            

            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            return val;
        }

        public int update_data(tbl_rescue_person_DAL objdal)
        {
          
            SqlCommand cm = new SqlCommand("update_tbl_rescue_person", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_rescue_person_id", objdal.int_rescue_person_id);
            cm.Parameters.AddWithValue("@int_lost_id", objdal.int_lost_id);
            cm.Parameters.AddWithValue("@str_address", objdal.str_address);
            cm.Parameters.AddWithValue("@int_contact", objdal.int_contact);
            cm.Parameters.AddWithValue("@str_description", objdal.str_description);
            cm.Parameters.AddWithValue("@int_voluntar_team_id", objdal.int_voluntar_team_id);
           


            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();

            da.Fill(ds);
            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteNonQuery());
            cn.Close();
            return val; 
        }

        public int delete_data(tbl_rescue_person_DAL objdal)
        {
            SqlCommand cm = new SqlCommand("delete_tbl_rescue_person", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@int_rescue_person_id", objdal.int_rescue_person_id);

            cn.Open();
            int val = Convert.ToInt16(cm.ExecuteScalar());
            cn.Close();

            return val;
        }

        public DataSet getdata(string query)
        {
            SqlCommand cm = new SqlCommand("select_tbl_rescue_person", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@cnd", query);

            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

    }
}
