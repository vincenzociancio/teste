using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Rotatividade_FuncionarioMap : EntityTypeConfiguration<Rotatividade_Funcionario>
    {
        public Rotatividade_FuncionarioMap()
        {
            // Primary Key
            this.HasKey(t => new { t.PK_ID, t.Ano, t.Mes, t.Contratado, t.Dispensado });

            // Properties
            this.Property(t => t.PK_ID)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Ano)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Mes)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Contratado)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Dispensado)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("Rotatividade_Funcionario");
            this.Property(t => t.PK_ID).HasColumnName("PK_ID");
            this.Property(t => t.Ano).HasColumnName("Ano");
            this.Property(t => t.Mes).HasColumnName("Mes");
            this.Property(t => t.Contratado).HasColumnName("Contratado");
            this.Property(t => t.Dispensado).HasColumnName("Dispensado");
        }
    }
}
