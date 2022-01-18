using Management_System_Sql_EFC_Database.Data;
using Management_System_Sql_EFC_Database.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Management_System_Sql_EFC_Database.Utilities
{
    internal interface IStatusUtility
    {
        bool CreateStatus(string statusName);
        IEnumerable<Status> GetAllStatus();

    }

    internal class StatusUtility : IStatusUtility
    {
        private readonly SqlContext _context = new SqlContext();

        public bool CreateStatus(string statusName)
        {
            var status = _context.Statuses.Where(x => x.StatusName == statusName).FirstOrDefault();
            if(status == null)
            {
                _context.Statuses.Add(new Status
                {
                    StatusName = statusName,
                });
                _context.SaveChanges();
                return true;
            }
            return false;
        }

        public IEnumerable<Status> GetAllStatus()
        {
            return _context.Statuses.OrderBy(p => p.Id);
        }
    }
}
