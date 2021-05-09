using Bulky.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Bulky.DataAccess.Repository.Extensions
{
    public static class RepositoryEmployeeExtensions
    {
        public static IQueryable<Product> Search(this IQueryable<Product> products, string searchTerm)
        {
            if (string.IsNullOrWhiteSpace(searchTerm))
                return products;

            var lowerCaseTerm = searchTerm.Trim().ToLower();

            return products.Where(p => p.Title.ToLower().Contains(lowerCaseTerm) || p.Category.Name.ToLower().Contains(lowerCaseTerm));
        }

        public static IQueryable<Product> Sort(this IQueryable<Product> products, string sortPrice)
        {
            switch (sortPrice)
            {
                case "priceDesc":
                    products = products.OrderByDescending(p => p.Price100);
                    break;
                case "priceAsc":
                    products = products.OrderBy(p => p.Price100);
                    break;
                case "defaultOrderPrice":
                    products = products.OrderBy(p => p.Title);
                    break;
            }
            return products;
        }
    }
}
