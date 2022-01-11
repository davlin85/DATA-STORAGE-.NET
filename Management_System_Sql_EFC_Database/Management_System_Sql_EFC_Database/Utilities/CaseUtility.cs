using Management_System_Sql_EFC_Database.Data;
using Management_System_Sql_EFC_Database.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Management_System_Sql_EFC_Database.Utilities
{
    internal interface ICaseUtlity
    {
        bool CreateCase(string headling, string description, DateTime created, DateTime updated);
        IEnumerable<Case> GetCases();
    }

    internal class CaseUtlity : ICaseUtlity
    {
        private readonly SqlContext _context = new SqlContext();

        public bool CreateCase(string headline, string description, DateTime created, DateTime updated)
        {
            var Case = _context.Cases.Where(x => x.HeadLine == headline).FirstOrDefault();
            if (Case == null)
            {
                _context.Cases.Add(new Case
                {
                    HeadLine = headline,
                    Description = description,
                    Created = created,
                    Updated = updated
                });
                _context.SaveChanges();
                return true;
            }
            return false;
        }

        public IEnumerable<Case> GetCases()
        {
            return _context.Cases.Include(x => x.User);
        }
    }
}
