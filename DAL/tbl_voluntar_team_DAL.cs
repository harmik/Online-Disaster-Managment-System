using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAL
{
   public class tbl_voluntar_team_DAL
    {
       public int int_voluntar_team_id { get; set; }
       public DateTime date_voluntar_date { get; set; }
       public Boolean bit_active { get; set; }
       public int int_member_id { get; set; }
       public string str_voluntar_team_name { get; set; }
    }
}
