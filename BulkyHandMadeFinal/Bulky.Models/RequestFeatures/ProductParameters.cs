using System;
using System.Collections.Generic;
using System.Text;

namespace Bulky.Models.RequestFeatures
{
    public class ProductParameters : RequestParameters
    {
        //public string Category { get; set; }
        public string SearchTerm { get; set; }

        public string OrderPrice { get; set; }
    }
}
