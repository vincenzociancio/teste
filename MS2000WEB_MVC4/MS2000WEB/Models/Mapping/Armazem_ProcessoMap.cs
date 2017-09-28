using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Armazem_ProcessoMap : EntityTypeConfiguration<Armazem_Processo>
    {
        public Armazem_ProcessoMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Processo, t.CodArmazem });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.CodArmazem)
                .IsRequired()
                .HasMaxLength(3);

            this.Property(t => t.Nome_Armazem)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Armazem_Processo");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.CodArmazem).HasColumnName("CodArmazem");
            this.Property(t => t.Nome_Armazem).HasColumnName("Nome_Armazem");
        }
    }
}
