﻿using Management_System_Sql_EFC_Database.Data;
using Management_System_Sql_EFC_Database.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Management_System_Sql_EFC_Database.Utilities
{
    internal interface IUserUtility
    {
        bool CreateUser(string firstname, string lastname, string email, int phonenumber, string streetname, int postalcode, string city, string country);
        IEnumerable<User> GetUsers();
    }

    internal class UserUtility : IUserUtility
    {
        private readonly SqlContext _context = new SqlContext();

        public bool CreateUser(string firstname, string lastname, string email, int phonenumber, string streetname, int postalcode, string city, string country)
        {
            var user = _context.Users.Where(x => x.Email == email).FirstOrDefault();
            if (user == null)
            {
                _context.Users.Add(new User
                {
                    FirstName = firstname,
                    LastName = lastname,
                    Email = email,
                    PhoneNumber = phonenumber,
                    StreetName = streetname,
                    PostalCode = postalcode,
                    City = city,
                    Country = country
                }) ;
                _context.SaveChanges();
                return true;
            }

            return false;
        }

        public IEnumerable<User> GetUsers()
        {
            return _context.Users;
        }
    }
}