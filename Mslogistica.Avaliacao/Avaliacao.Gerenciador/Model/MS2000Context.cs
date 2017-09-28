using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.Entity;

namespace Avaliacao.Gerenciador.Model
{
    public class MS2000Context : DbContext
    {
        static MS2000Context()
        {
            Database.SetInitializer<MS2000Context>(null);
        }

        public MS2000Context()
            : base("MS2000Context")
        {
            this.Configuration.AutoDetectChangesEnabled = false;
            //this.Configuration.LazyLoadingEnabled = false;
            
        }

        public DbSet<Avaliacao_Avaliacao> Avaliacao_Avaliacao { get; set; }
        public DbSet<Avaliacao_Colaboradores> Avaliacao_Colaboradores { get; set; }
        public DbSet<Avaliacao_Perguntas> Avaliacao_Perguntas { get; set; }
        public DbSet<Avaliacao_Respostas> Avaliacao_Respostas { get; set; }
        public DbSet<Avaliacao_Respostas_Colaboradores> Avaliacao_Respostas_Colaboradores { get; set; }
        public DbSet<Usuarios> Usuarios { get; set; }
        public DbSet<Setores> Setores { get; set; }
        public DbSet<Avaliacao_Categoria> Avaliacao_Categoria { get; set; }
    }
}
