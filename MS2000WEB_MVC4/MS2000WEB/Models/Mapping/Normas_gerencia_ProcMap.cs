using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Normas_gerencia_ProcMap : EntityTypeConfiguration<Normas_gerencia_Proc>
    {
        public Normas_gerencia_ProcMap()
        {
            // Primary Key
            this.HasKey(t => t.sequencial);

            // Properties
            this.Property(t => t.Norma)
                .HasMaxLength(100);

            this.Property(t => t.Nome_PDF)
                .HasMaxLength(255);

            this.Property(t => t.Setor)
                .HasMaxLength(50);

            this.Property(t => t.SubSetor)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Normas_gerencia_Proc");
            this.Property(t => t.sequencial).HasColumnName("sequencial");
            this.Property(t => t.Norma).HasColumnName("Norma");
            this.Property(t => t.Nome_PDF).HasColumnName("Nome_PDF");
            this.Property(t => t.Setor).HasColumnName("Setor");
            this.Property(t => t.SubSetor).HasColumnName("SubSetor");
            this.Property(t => t.Ativo).HasColumnName("Ativo");
        }
    }
}
