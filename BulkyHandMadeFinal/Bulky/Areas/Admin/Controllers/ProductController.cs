using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Bulky.DataAccess.Repository.IRepository;
using Bulky.Models;
using Bulky.Models.ViewModels;
using Bulky.Utility;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace Bulky.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize(Roles = SD.Role_Admin + "," + SD.Role_Employee)]
    public class ProductController : Controller
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly IWebHostEnvironment _hostEnvironment;
        public ProductController(IUnitOfWork unitOfWork, IWebHostEnvironment hostEnvironment)
        {
            _unitOfWork = unitOfWork;
            _hostEnvironment = hostEnvironment;
        }

        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Upsert(int? id)
        {
            ProductVM productVM = new ProductVM()
            {
                Product = new Product(),
                CategoryList = _unitOfWork.Category.GetAll().Select(i => new SelectListItem
                {
                    Text = i.Name,
                    Value = i.Id.ToString()
                }),
                SupplierList = _unitOfWork.Supplier.GetAll().Select(i => new SelectListItem
                {
                    Text = i.Name,
                    Value = i.Id.ToString()
                }),
                ProductImages = new List<ProductImages>()
            };
            if (id == null)
            {
                //this is for create
                return View(productVM);
            }
            productVM.Product = _unitOfWork.Product.Get(id.GetValueOrDefault());
            var productImages = _unitOfWork.ProductImages.GetAll(i => i.ProductId == id);
            if (productImages.Count() > 0)
            {
                foreach (var image in productImages)
                {
                    productVM.ProductImages.Add(image);
                }
            }
            if (productVM.Product == null)
            {
                return NotFound();
            }
            return View(productVM);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Upsert(ProductVM productVM)
        {
            if (ModelState.IsValid)
            {
                string webRootPath = _hostEnvironment.WebRootPath;
                var files = HttpContext.Request.Form.Files;

                //productVM.ProductImages = new List<ProductImages>();
                productVM.Product.ImageUrl = new List<ProductImages>();
                var productImages = _unitOfWork.ProductImages.GetAll(i => i.ProductId == productVM.Product.Id);
                if (files.Count > 0)
                {
                    foreach (var item in files)
                    {
                        string fileName = Guid.NewGuid().ToString();
                        var uploads = Path.Combine(webRootPath, @"images\products");
                        var extension = Path.GetExtension(item.FileName);

                        if (productImages != null)
                        {
                            //this is an edit and we need to remove old image
                            foreach (var image in productImages)
                            {
                                var imagePath = Path.Combine(webRootPath, image.ImageUrl.TrimStart('\\'));
                                if (System.IO.File.Exists(imagePath))
                                {
                                    System.IO.File.Delete(imagePath);
                                }
                            }

                        }
                        using (var filesStreams = new FileStream(Path.Combine(uploads, fileName + extension), FileMode.Create))
                        {
                            item.CopyTo(filesStreams);
                        }
                        //productVM.ProductImages.Add(new ProductImages { ImageUrl = @"\images\products\" + fileName + extension });
                        productVM.Product.ImageUrl.Add(new ProductImages { ImageUrl = @"\images\products\" + fileName + extension });
                        //productVM.Product.ImageUrl = @"\images\products\" + fileName + extension;
                    }
                }
                else
                {
                    //update when you don't change image
                    if (productVM.Product.Id != 0)
                    {
                        Product objFromDb = _unitOfWork.Product.Get(productVM.Product.Id);
                        productVM.Product.ImageUrl = objFromDb.ImageUrl;
                    }

                }
                if (productVM.Product.Id == 0)
                {
                    _unitOfWork.Product.Add(productVM.Product);
                    //if (productVM.ProductImages.Count > 0)
                    //{
                    //    foreach (var imageProduct in productVM.ProductImages)
                    //    {
                    //        var ProductImages = new ProductImages()
                    //        {
                    //            Product = productVM.Product,
                    //            ProductId = productVM.Product.Id,
                    //            ImageUrl = imageProduct.ImageUrl

                    //        };
                    //        _unitOfWork.ProductImages.Add(ProductImages);
                    //    }
                    //}
                    if (productVM.Product.ImageUrl.Count > 0)
                    {
                        foreach (var imageProduct in productVM.Product.ImageUrl)
                        {
                            _unitOfWork.ProductImages.Add(imageProduct);
                        }
                    }

                }
                else
                {
                    _unitOfWork.Product.Update(productVM.Product);
                    //if (productVM.ProductImages.Count > 0)
                    //{
                    //    _unitOfWork.ProductImages.Remove(productVM.Product.Id)
                    //    foreach (var imageProduct in productVM.ProductImages)
                    //    {
                    //        var ProductImages = new ProductImages()
                    //        {
                    //            Product = productVM.Product,
                    //            ProductId = productVM.Product.Id,
                    //            ImageUrl = imageProduct.ImageUrl

                    //        };
                    //        _unitOfWork.ProductImages.Add(ProductImages);
                    //    }
                    //}
                    //var listProductImages = _unitOfWork.ProductImages.GetAll(i => i.Id == productVM.Product.Id);
                    //if (productVM.ProductImages.Count > 0)
                    //{
                    //    foreach (var imageProduct in productVM.ProductImages)
                    //    {
                    //        //var ProductImages = new ProductImages()
                    //        //{
                    //        //    Product = productVM.Product,
                    //        //    ProductId = productVM.Product.Id,
                    //        //    ImageUrl = imageProduct.ImageUrl

                    //        //};
                    //        foreach (var ProductImages in listProductImages)
                    //        {
                    //            ProductImages.Product = productVM.Product;
                    //            ProductImages.Id = productVM.Product.Id;
                    //            ProductImages.ProductId = productVM.Product.Id;
                    //            ProductImages.ImageUrl = imageProduct.ImageUrl;
                    //            break;
                    //        }
                    //    }
                    //}
                }
                _unitOfWork.Save();
                return RedirectToAction(nameof(Index));
            }
            else
            {
                productVM.CategoryList = _unitOfWork.Category.GetAll().Select(i => new SelectListItem
                {
                    Text = i.Name,
                    Value = i.Id.ToString()
                });
                productVM.SupplierList = _unitOfWork.Supplier.GetAll().Select(i => new SelectListItem
                {
                    Text = i.Name,
                    Value = i.Id.ToString()
                });
                if (productVM.Product.Id != 0)
                {
                    productVM.Product = _unitOfWork.Product.Get(productVM.Product.Id);
                }
            }
            return View(productVM);
        }

        #region API CALLS
        [HttpGet]
        public IActionResult GetAll()
        {
            var allObj = _unitOfWork.Product.GetAll(includeProperties: "Category,Supplier");
            return Json(new { data = allObj });
        }
        [HttpDelete]
        public IActionResult Delete(int id)
        {
            var objFromDb = _unitOfWork.Product.Get(id);
            var objImageFromDb = _unitOfWork.ProductImages.GetAll(i => i.ProductId == id);
            if (objFromDb == null)
            {
                return Json(new { success = false, message = "Error while deleting" });
            }
            string webRootPath = _hostEnvironment.WebRootPath;
            foreach (var image in objImageFromDb)
            {
                var imagePath = Path.Combine(webRootPath, image.ImageUrl.TrimStart('\\'));
                if (System.IO.File.Exists(imagePath))
                {
                    System.IO.File.Delete(imagePath);
                }
            }
            _unitOfWork.Product.Remove(objFromDb);
            _unitOfWork.Save();
            return Json(new { success = true, message = "Deleted successful" });
        }
        #endregion
    }
}
