using Production.Model;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Production.DAL
{
    public class ProductDbContext: DbContext
    {
        public DbSet<User> Users { get; set; } 
    }
}
