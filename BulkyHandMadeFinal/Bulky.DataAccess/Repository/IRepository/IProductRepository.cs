using Bulky.Models;
using Bulky.Models.RequestFeatures;
using System;
using System.Collections.Generic;
using System.Text;

namespace Bulky.DataAccess.Repository.IRepository
{
    public interface IProductRepository : IRepository<Product>
    {
        void Update(Product product);

        PagedList<Product> GetProducts(ProductParameters productParameters);
    }
}
