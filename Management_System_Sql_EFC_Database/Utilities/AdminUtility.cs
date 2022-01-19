using Management_System_Sql_EFC_Database.Data;
using Management_System_Sql_EFC_Database.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Management_System_Sql_EFC_Database.Utilities
{
    internal interface IAdminUtility
    {
        bool CreateAdmin(string statusName);
        IEnumerable<Admin> GetAllAdmin();
    }

    internal class AdminUtility : IAdminUtility
    {
        private readonly SqlContext _context = new SqlContext();

        public bool CreateAdmin(string adminName)
        {
            var admin = _context.Admins.Where(x => x.AdminName == adminName).FirstOrDefault();
            if (admin == null)
            {
                _context.Admins.Add(new Admin
                {
                    AdminName = adminName,
                });
                _context.SaveChanges();
                return true;
            }
            return false;
        }

        public IEnumerable<Admin> GetAllAdmin()
        {
            return _context.Admins.OrderBy(p => p.Id);
        }
    }
}
