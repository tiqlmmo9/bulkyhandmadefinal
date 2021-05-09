using Bulky.DataAccess.Data;
using Bulky.DataAccess.Repository.Extensions;
using Bulky.DataAccess.Repository.IRepository;
using Bulky.Models;
using Bulky.Models.RequestFeatures;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Bulky.DataAccess.Repository
{
    public class ProductImagesRepository : Repository<ProductImages>, IProductImagesRepository
    {
        private readonly ApplicationDbContext _db;
        public ProductImagesRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        public void Update(ProductImages productImages)
        {
            var objFromDb = _db.ProductImages.FirstOrDefault(s => s.Id == productImages.Id);
            if (objFromDb != null)
            {
                if (productImages.ImageUrl != null)
                {
                    objFromDb.ImageUrl = productImages.ImageUrl;
                }
            }
        }

        //public IEnumerable<Product> Search(string searchString)
        //{
        //    var products = from p in _db.Products
        //                   select p;
        //    if (string.IsNullOrWhiteSpace(searchString))
        //        return products;

        //    var lowerCaseTerm = Encoding.UTF8.GetString(Encoding.Default.GetBytes(searchString.Trim().ToLower()));

        //    products = products.Where(p => p.Title.Contains(lowerCaseTerm));

        //    return products;

        //}

        public PagedList<Product> GetProducts(ProductParameters productParameters)
        {
            var products = _db.Products.Search(productParameters.SearchTerm).OrderBy(p => p.Title).Sort(productParameters.OrderPrice).ToList();

            return PagedList<Product>.ToPagedList(products, productParameters.PageNumber, productParameters.PageSize);
        }
    }
}
