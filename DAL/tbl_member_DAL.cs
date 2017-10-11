using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAL
{
   public class tbl_member_DAL
    {
      
       public int int_member_id { get; set; }
       public int int_disaster_id { get; set; }
       public string str_member_name { get; set; }
       public int int_designation_id { get; set; }
       public string str_current_working { get; set; }
       public string str_address { get; set; }
       public Int64 int_contact { get; set; }
       public string str_email { get; set; }
       public string str_password { get; set; }
    }
}
