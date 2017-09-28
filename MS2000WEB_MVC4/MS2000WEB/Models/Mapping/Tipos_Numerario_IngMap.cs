using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Tipos_Numerario_IngMap : EntityTypeConfiguration<Tipos_Numerario_Ing>
    {
        public Tipos_Numerario_IngMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Codigo });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Descricao)
                .HasMaxLength(70);

            this.Property(t => t.Plano_contas)
                .HasMaxLength(8);

            this.Property(t => t.Rateio)
                .HasMaxLength(1);

            // Table & Column Mappings
            this.ToTable("Tipos_Numerario_Ing");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Plano_contas).HasColumnName("Plano_contas");
            this.Property(t => t.Rateio).HasColumnName("Rateio");
            this.Property(t => t.ContabilizaCC).HasColumnName("ContabilizaCC");
        }
    }
}
