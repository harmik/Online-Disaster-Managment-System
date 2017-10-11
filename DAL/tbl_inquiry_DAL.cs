using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAL
{
   public class tbl_inquiry_DAL
    {
       public int int_inquiry_id { get; set; }
       public int int_user_id { get; set; }
       public string str_description { get; set; }
       public DateTime date_date { get; set; }
       public string str_time { get; set; }
       public int int_voluntar_id { get; set; }
       public string str_ans_description { get; set; }
       public DateTime date_ans_date { get; set; }
       public string str_ans_time { get; set; }

    }
}
