using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAL
{
    public class tbl_news_DAL
    {
        public int int_news_id { get; set; }
        public string str_news_title { get; set; }
        public string str_short_desc { get; set; }
        public string str_long_desc { get; set; }
        public DateTime date_date { get; set; }
    }
}
