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
  public class tbl_login_BAL
    {
        SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["dbconnect"]);
        public DataSet getData(string query)
        {
            SqlCommand cm = new SqlCommand("select_tbl_login", cn);
            cm.CommandType = CommandType.StoredProcedure;

            cm.Parameters.AddWithValue("@cnd", query);

            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataSet ds = new DataSet();

            da.Fill(ds);

            return ds;

        }


    }
}


