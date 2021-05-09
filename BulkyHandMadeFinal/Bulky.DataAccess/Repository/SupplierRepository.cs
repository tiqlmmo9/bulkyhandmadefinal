using Bulky.DataAccess.Data;
using Bulky.DataAccess.Repository.IRepository;
using Bulky.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Bulky.DataAccess.Repository
{
    public class SupplierRepository : Repository<Supplier>, ISupplierRepository
    {
        private readonly ApplicationDbContext _db;
        public SupplierRepository(ApplicationDbContext db):base(db)
        {
            _db = db;
        }

        public void Update(Supplier supplier)
        {
            var objFromDb = _db.Suppliers.FirstOrDefault(s => s.Id == supplier.Id);
            if (objFromDb != null)
            {
                objFromDb.Name = supplier.Name;
                _db.SaveChanges();
            }
        }
    }
}
