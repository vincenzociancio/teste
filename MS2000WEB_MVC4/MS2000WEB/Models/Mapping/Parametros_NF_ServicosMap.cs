using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Parametros_NF_ServicosMap : EntityTypeConfiguration<Parametros_NF_Servicos>
    {
        public Parametros_NF_ServicosMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Ultima_NF)
                .HasMaxLength(6);

            this.Property(t => t.Nat_Serv)
                .HasMaxLength(50);

            this.Property(t => t.Codigo_Fiscal)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Parametros_NF_Servicos");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Ultima_NF).HasColumnName("Ultima_NF");
            this.Property(t => t.Nat_Serv).HasColumnName("Nat_Serv");
            this.Property(t => t.Codigo_Fiscal).HasColumnName("Codigo_Fiscal");
            this.Property(t => t.Percentual_ISS).HasColumnName("Percentual_ISS");
            this.Property(t => t.Percentual_IRRF).HasColumnName("Percentual_IRRF");
            this.Property(t => t.Percentual_PCC).HasColumnName("Percentual_PCC");
        }
    }
}
