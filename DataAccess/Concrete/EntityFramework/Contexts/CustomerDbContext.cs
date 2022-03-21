using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;
using Entities.Concrete;

namespace DataAccess.Concrete.EntityFramework.Contexts
{
    public class CustomerDbContext:DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=(localdb)\local;Database=CustomerDb;Trusted_Connection=true");
        }
        public DbSet<Customer> Customer { get; set; }
        public DbSet<City> City { get; set; }
        public DbSet<Town> Town { get; set; }

    }
}
