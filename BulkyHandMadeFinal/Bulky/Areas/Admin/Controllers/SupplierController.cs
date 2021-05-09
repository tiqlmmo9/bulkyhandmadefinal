using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Bulky.DataAccess.Repository.IRepository;
using Bulky.Models;
using Bulky.Utility;
using Dapper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace Bulky.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize(Roles = SD.Role_Admin + "," + SD.Role_Employee)]
    public class SupplierController : Controller
    {
        private readonly IUnitOfWork _unitOfWork;

        public SupplierController(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Upsert(int? id)
        {
            Supplier supplier = new Supplier();
            if (id == null)
            {
                //this is for create
                return View(supplier);
            }
            //this is for edit
            var parameter = new DynamicParameters();
            parameter.Add("@Id", id);
            supplier = _unitOfWork.SP_Call.OneRecord<Supplier>(SD.Proc_Supplier_Get, parameter);
            if (supplier == null)
            {
                return NotFound();
            }
            return View(supplier);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Upsert(Supplier supplier)
        {
            if (ModelState.IsValid)
            {
                var parameter = new DynamicParameters();
                parameter.Add("@Name", supplier.Name);
                parameter.Add("@StreetAddress", supplier.StreetAddress);
                parameter.Add("@City", supplier.City);
                parameter.Add("@State", supplier.State);
                parameter.Add("@PostalCode", supplier.PostalCode);
                parameter.Add("@PhoneNumber", supplier.PhoneNumber);
                if (supplier.Id == 0)
                {
                    _unitOfWork.SP_Call.Execute(SD.Proc_Supplier_Create, parameter);

                }
                else
                {
                    parameter.Add("@Id", supplier.Id);
                    _unitOfWork.SP_Call.Execute(SD.Proc_Supplier_Update, parameter);
                }
                _unitOfWork.Save();
                return RedirectToAction(nameof(Index));
            }
            return View(supplier);
        }

        #region API CALLS
        [HttpGet]
        public IActionResult GetAll()
        {
            var allObj = _unitOfWork.SP_Call.List<Supplier>(SD.Proc_Supplier_GetAll,null);
            return Json(new { data = allObj });
        }
        [HttpDelete]
        public IActionResult Delete(int id)
        {
            var parameter = new DynamicParameters();
            parameter.Add("@Id", id);
            var objFromDb = _unitOfWork.SP_Call.OneRecord<Supplier>(SD.Proc_Supplier_Get, parameter);
            if (objFromDb == null)
            {
                return Json(new { success = false, message = "Error whie deleting" });
            }
            _unitOfWork.SP_Call.Execute(SD.Proc_Supplier_Delete,parameter);
            _unitOfWork.Save();
            return Json(new { success = true, message = "Deleted successful" });
        }
        #endregion
    }
}
