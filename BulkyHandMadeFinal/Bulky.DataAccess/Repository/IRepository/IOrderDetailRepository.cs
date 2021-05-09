using Bulky.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace Bulky.DataAccess.Repository.IRepository
{
    public interface IOrderDetailRepository:IRepository<OrderDetails>
    {
        void Update(OrderDetails obj);
    }
}
