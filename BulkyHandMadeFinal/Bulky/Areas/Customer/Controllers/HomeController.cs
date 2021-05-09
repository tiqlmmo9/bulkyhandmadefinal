using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Bulky.Models;
using Bulky.Models.ViewModels;
using Bulky.DataAccess.Repository.IRepository;
using Microsoft.AspNetCore.Authorization;
using System.Security.Claims;
using Bulky.Utility;
using Microsoft.AspNetCore.Http;
using ReflectionIT.Mvc.Paging;
using Bulky.Models.RequestFeatures;
using Newtonsoft.Json;

namespace Bulky.Areas.Customer.Controllers
{
    [Area("Customer")]
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IUnitOfWork _unitOfWork;
        public HomeController(ILogger<HomeController> logger, IUnitOfWork unitOfWork)
        {
            _logger = logger;
            _unitOfWork = unitOfWork;
        }

        //public IActionResult Index(int page = 1)
        //{
        //    IEnumerable<Product> productList = _unitOfWork.Product.GetAll(includeProperties: "Category,Supplier");

        //    //var model = PagingList.Create(productList, 2, page);

        //    var claimsIdentity = (ClaimsIdentity)User.Identity;
        //    var claim = claimsIdentity.FindFirst(ClaimTypes.NameIdentifier);

        //    if (claim != null)
        //    {
        //        var count = _unitOfWork.ShoppingCart.GetAll(c => c.ApplicationUserId == claim.Value).ToList().Count();

        //        HttpContext.Session.SetInt32(SD.ssShoppingCart, count);
        //    }

        //    return View(productList);
        //}
        public IActionResult Index([FromQuery]ProductParameters productParameters)
        {
            //var productList = _unitOfWork.Product.GetAll(includeProperties: "Category,Supplier");
            //if (!string.IsNullOrWhiteSpace(productParameters.searchTerm))
            //productList= _unitOfWork.Product.Search(productParameters.searchTerm).ToList();
            ViewData["SearchTerm"] = productParameters.SearchTerm;
            ViewData["OrderPrice"] = productParameters.OrderPrice;
            var  productList = _unitOfWork.Product.GetProducts(productParameters);
            foreach(var product in productList)
            {
                product.Supplier = new Supplier();
                product.Supplier.Name = _unitOfWork.Supplier.GetFirstOrDefault(s => s.Id == product.SupplierId).Name;
                var productImages = _unitOfWork.ProductImages.GetAll(i => i.ProductId == product.Id).ToList();
                product.ImageUrl = productImages;
            }

            //Response.Headers.Add("X-Pagination", JsonConvert.SerializeObject(productList.MetaData));
            //var model = PagingList.Create(productList, 2, productParameters.PageNumber);

            var claimsIdentity = (ClaimsIdentity)User.Identity;
            var claim = claimsIdentity.FindFirst(ClaimTypes.NameIdentifier);

            if (claim != null)
            {
                var count = _unitOfWork.ShoppingCart.GetAll(c => c.ApplicationUserId == claim.Value).ToList().Count();

                HttpContext.Session.SetInt32(SD.ssShoppingCart, count);
            }
            return View(productList);
        }

        public IActionResult Details(int id)
        {
            var productFromDb = _unitOfWork.Product.GetFirstOrDefault(u => u.Id == id, includeProperties: "Category,Supplier");
            var productImages = _unitOfWork.ProductImages.GetAll(i => i.ProductId == id).ToList();
                productFromDb.ImageUrl = productImages;
            ShoppingCart cartObj = new ShoppingCart()
            {
                Product = productFromDb,
                ProductId = productFromDb.Id
            };
            return View(cartObj);
        }

        //public ActionResult<IEnumerable<Product>> Search([FromQuery]string searchString)
        //{
        //    return _unitOfWork.Product.Search(searchString).ToList();
        //}
        //public IActionResult Search(string searchString)
        //{
        //    _unitOfWork.Product.Search(searchString).ToList();

        //    return RedirectToAction(nameof(Index));
        //}



        [HttpPost]
        [ValidateAntiForgeryToken]
        [Authorize]
        public IActionResult Details(ShoppingCart CartObject)
        {
            CartObject.Id = 0;
            if (ModelState.IsValid)
            {
                //then we will add to cart
                var claimsIdentity = (ClaimsIdentity)User.Identity;
                var claim = claimsIdentity.FindFirst(ClaimTypes.NameIdentifier);
                CartObject.ApplicationUserId = claim.Value;

                ShoppingCart cartFromDb = _unitOfWork.ShoppingCart.GetFirstOrDefault(u => u.ApplicationUserId == CartObject.ApplicationUserId && u.ProductId == CartObject.ProductId, includeProperties: "Product");

                if (cartFromDb == null)
                {
                    //no records exists in database for that product for that user
                    _unitOfWork.ShoppingCart.Add(CartObject);
                }
                else
                {
                    //CartObject.Count += cartFromDb.Count;
                    //_unitOfWork.ShoppingCart.Update(CartObject);
                    cartFromDb.Count += CartObject.Count;
                    _unitOfWork.ShoppingCart.Update(cartFromDb);
                }
                _unitOfWork.Save();

                var count = _unitOfWork.ShoppingCart.GetAll(c => c.ApplicationUserId == CartObject.ApplicationUserId).ToList().Count();

                //HttpContext.Session.SetObject(SD.ssShoppingCart, CartObject);
                HttpContext.Session.SetInt32(SD.ssShoppingCart, count);

                return RedirectToAction("Index", "Cart");
            }
            else
            {
                var productFromDb = _unitOfWork.Product.GetFirstOrDefault(u => u.Id == CartObject.ProductId, includeProperties: "Category,Supplier");
                var productImages = _unitOfWork.ProductImages.GetAll(i => i.ProductId == CartObject.ProductId).ToList();
                productFromDb.ImageUrl = productImages;
                ShoppingCart cartObj = new ShoppingCart()
                {
                    Product = productFromDb,
                    ProductId = productFromDb.Id
                };
                return View(cartObj);
            }

        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
