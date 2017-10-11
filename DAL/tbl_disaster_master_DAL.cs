using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAL
{
    public class tbl_disaster_master_DAL
    {
        public int int_disaster_id { get; set; }
        public string str_disaster_name { get; set; }
        public DateTime  date_active_date { get; set; }
        public DateTime date_end_date { get; set; }
        public Boolean bit_status { get; set; }
        public string  str_place { get; set; }
        public string  str_longitude { get; set; }
        public string str_latitude { get; set; }
        public int int_disaster_type_id { get; set; }
        public string str_img { get; set; }

    }
}
