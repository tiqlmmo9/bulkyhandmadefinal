using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace Bulky.Models.ViewModels
{
    [NotMapped]
    public class ShoppingCartVM
    {
        public Product Product { get; set; }
        public ProductImages ProductImages { get; set; }
        public IEnumerable<ShoppingCart> ListCart { get; set; }
        public OrderHeader OrderHeader { get; set; }
    }
}
