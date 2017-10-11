using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAL
{
    public class tbl_lost_DAL
    {
        public int int_lost_id { get; set; }
        public int int_user_id { get; set; }
        public string str_name { get; set; }
        public DateTime date_date { get; set; }
        public string str_time { get; set; }
        public string str_where_lost { get; set; }
        public Boolean bit_status { get; set; }
        public DateTime date_find_date { get; set; }
        public string str_find_time { get; set; }
        public int int_age { get; set; }
        public string str_img_path { get; set; }
        public string str_gender { get; set; }

    }
}
