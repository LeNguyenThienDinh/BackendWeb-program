using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data.SqlClient;
using System.ComponentModel.DataAnnotations;

namespace Buoi3.Models
{
    public class Account
    {
        [Key]
        public int MaTK { get; set; }
        public string TenTK { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
    }

    public class PhoneShopContext : DbContext
    {
        public PhoneShopContext()
            : base("PhoneShopDbConnection")
        {
            Database.Initialize(false);
        }

        public DbSet<Account> Accounts { get; set; }
    }
}