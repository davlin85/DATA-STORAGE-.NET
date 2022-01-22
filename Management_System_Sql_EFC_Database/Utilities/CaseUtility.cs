﻿using Management_System_Sql_EFC_Database.Data;
using Management_System_Sql_EFC_Database.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Management_System_Sql_EFC_Database.Utilities
{
    internal interface ICaseUtility
    {
        bool CreateCase(string headline, string description, DateTime dateTime, int userId, int statusId, int adminId);
        IEnumerable<Case> Get10Cases();
        IEnumerable<Case> GetAllCases();
        IEnumerable<Case> GetStatus();
    }

    internal class CaseUtility : ICaseUtility
    {
        private readonly SqlContext _context = new SqlContext();

        public bool CreateCase(string headline, string description, DateTime dateTime, int userId, int statusId, int adminId)
        {
            var Case = _context.Cases.Where(x => x.HeadLine == headline).FirstOrDefault();
            if (Case == null)
            { 
                _context.Cases.Add(new Case
                {
                    HeadLine = headline,
                    Description = description,
                    DateTime = dateTime,
                    UserId = userId,
                    StatusId = statusId,
                    AdminId = adminId
                });
                _context.SaveChanges();
                return true;
            }
            return false;
        }


        public IEnumerable<Case> Get10Cases()
        {
            return _context.Cases.Include(x => x.User).Include(x => x.Status).Include(x => x.Admin).OrderBy(d => d.StatusId).ThenByDescending(d => d.DateTime).Take(10);
        }

        public IEnumerable<Case> GetAllCases()
        {
            return _context.Cases.Include(x => x.User).Include(x => x.Status).Include(x => x.Admin).OrderByDescending(p => p.Id);
        }

        public IEnumerable<Case> GetStatus()
        {
            return _context.Cases;
        }
    }
}
