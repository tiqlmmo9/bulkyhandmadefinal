using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;

namespace Bulky.Models.ViewModels
{
    [NotMapped]
    public class ProductVM
    {
        public Product Product { get; set; }

        public IEnumerable<SelectListItem> CategoryList { get; set; }
        public IEnumerable<SelectListItem> SupplierList { get; set; }
        public List<ProductImages> ProductImages { get; set; }

        public string SearchTerm { get; set; }
    }
}
