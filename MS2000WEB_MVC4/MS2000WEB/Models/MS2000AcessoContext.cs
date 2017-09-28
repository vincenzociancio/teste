using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace MS2000WEB.Models
{
    public class MS2000AcessoContext : DbContext
    {
        static MS2000AcessoContext()
        {
            Database.SetInitializer<MS2000AcessoContext>(null);
        }

        public MS2000AcessoContext()
            : base("Name=MS2000Context")
        {
            this.Configuration.LazyLoadingEnabled = false;
            this.Configuration.AutoDetectChangesEnabled = false;
        }

        public DbSet<Usuario> Usuarios { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Configurations.Add(new MS2000WEB.Models.Mapping.UsuarioMap());
        }
    }
}