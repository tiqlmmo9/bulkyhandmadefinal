using Bulky.Models;
using Bulky.Models.RequestFeatures;
using System;
using System.Collections.Generic;
using System.Text;

namespace Bulky.DataAccess.Repository.IRepository
{
    public interface IProductImagesRepository : IRepository<ProductImages>
    {
        void Update(ProductImages productImages);

        //PagedList<Product> GetProducts(ProductParameters productParameters);
    }
}
