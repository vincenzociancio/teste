using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Atos_ImportadorMap : EntityTypeConfiguration<Atos_Importador>
    {
        public Atos_ImportadorMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Numero, t.Importador });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Numero)
                .IsRequired()
                .HasMaxLength(20);

            this.Property(t => t.Importador)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Tipo)
                .HasMaxLength(4);

            // Table & Column Mappings
            this.ToTable("Atos_Importador");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Numero).HasColumnName("Numero");
            this.Property(t => t.Importador).HasColumnName("Importador");
            this.Property(t => t.Tipo).HasColumnName("Tipo");
            this.Property(t => t.Percentual).HasColumnName("Percentual");
            this.Property(t => t.Valor_imp).HasColumnName("Valor_imp");
            this.Property(t => t.Valor_impc).HasColumnName("Valor_impc");
            this.Property(t => t.Valor_imps).HasColumnName("Valor_imps");
            this.Property(t => t.Valor_exp).HasColumnName("Valor_exp");
            this.Property(t => t.Saldo).HasColumnName("Saldo");
        }
    }
}
