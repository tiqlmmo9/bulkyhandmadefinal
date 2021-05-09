using System;
using System.Collections.Generic;
using System.Text;

namespace Bulky.Models.RequestFeatures
{
    public abstract class RequestParameters
    {
        const int maxPageSize = 12;
        public int PageNumber { get; set; } = 1;
        private int _pageSize = 12;
        public int PageSize
        {
            get
            {
                return _pageSize;
            }
            set
            {
                _pageSize = (value > maxPageSize) ? maxPageSize : value;
            }
        }
    }
}
